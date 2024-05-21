.class public final Landroidx/media3/container/NalUnitUtil;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/container/NalUnitUtil$SpsData;,
        Landroidx/media3/container/NalUnitUtil$H265SpsData;,
        Landroidx/media3/container/NalUnitUtil$PpsData;
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

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 215
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

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

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearPrefixFlags([Z)V
    .locals 2

    const/4 v0, 0x0

    .line 812
    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    .line 813
    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    .line 814
    aput-boolean v0, p0, v1

    return-void
.end method

.method public static discardToSps(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 280
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v0, :cond_3

    .line 284
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_1

    .line 286
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    const/4 v8, 0x7

    if-ne v7, v8, :cond_1

    .line 288
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sub-int/2addr v2, v6

    .line 289
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 290
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 291
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 292
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

    .line 304
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

    .line 752
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-nez v0, :cond_1

    return p2

    .line 757
    :cond_1
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_2

    .line 758
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_2
    const/4 v3, 0x2

    if-le v0, v2, :cond_3

    .line 760
    aget-boolean v4, p3, v2

    if-eqz v4, :cond_3

    aget-byte v4, p0, p1

    if-ne v4, v2, :cond_3

    .line 761
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v3

    return p1

    :cond_3
    if-le v0, v3, :cond_4

    .line 763
    aget-boolean v4, p3, v3

    if-eqz v4, :cond_4

    aget-byte v4, p0, p1

    if-nez v4, :cond_4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-ne v4, v2, :cond_4

    .line 767
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    sub-int/2addr p1, v2

    return p1

    :cond_4
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_1
    if-ge p1, v4, :cond_7

    .line 775
    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 778
    aget-byte v7, p0, v6

    if-nez v7, :cond_6

    add-int/lit8 v7, p1, -0x1

    aget-byte v7, p0, v7

    if-nez v7, :cond_6

    if-ne v5, v2, :cond_6

    .line 779
    invoke-static {p3}, Landroidx/media3/container/NalUnitUtil;->clearPrefixFlags([Z)V

    return v6

    :cond_6
    add-int/lit8 p1, p1, -0x2

    :goto_2
    add-int/lit8 p1, p1, 0x3

    goto :goto_1

    :cond_7
    if-le v0, v3, :cond_9

    add-int/lit8 p1, p2, -0x3

    .line 791
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

    .line 793
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_8

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_8

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_8

    goto :goto_3

    .line 794
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

    .line 798
    aget-byte p1, p0, p1

    if-nez p1, :cond_c

    aget-byte p1, p0, v4

    if-nez p1, :cond_c

    goto :goto_5

    .line 799
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

    .line 801
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

    .line 819
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

    .line 344
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7e

    shr-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static getNalUnitType([BI)I
    .locals 0

    add-int/lit8 p1, p1, 0x3

    .line 332
    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static isNalUnitSei(Ljava/lang/String;B)Z
    .locals 3

    const-string v0, "video/avc"

    .line 317
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x1f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    :cond_0
    const-string v0, "video/hevc"

    .line 319
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

.method public static parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x2

    .line 528
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseH265SpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;
    .locals 25

    .line 542
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/4 v1, 0x4

    .line 543
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    const/4 v1, 0x3

    .line 544
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 545
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    const/4 v3, 0x2

    .line 546
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 547
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v6

    const/4 v4, 0x5

    .line 548
    invoke-virtual {v0, v4}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x20

    const/4 v12, 0x1

    if-ge v10, v11, :cond_1

    .line 551
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    if-eqz v11, :cond_0

    shl-int v11, v12, v10

    or-int/2addr v9, v11

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x6

    new-array v13, v10, [I

    const/4 v11, 0x0

    :goto_1
    const/16 v14, 0x8

    if-ge v11, v10, :cond_2

    .line 557
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v14

    aput v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 559
    :cond_2
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v15

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    if-ge v10, v2, :cond_5

    .line 562
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_3

    add-int/lit8 v11, v11, 0x59

    .line 565
    :cond_3
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v16

    if-eqz v16, :cond_4

    add-int/lit8 v11, v11, 0x8

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 569
    :cond_5
    invoke-virtual {v0, v11}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    if-lez v2, :cond_6

    rsub-int/lit8 v10, v2, 0x8

    mul-int/2addr v10, v3

    .line 571
    invoke-virtual {v0, v10}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 573
    :cond_6
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v16

    .line 574
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    if-ne v10, v1, :cond_7

    .line 576
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 578
    :cond_7
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 579
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v17

    .line 580
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 581
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 582
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 583
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 584
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    if-eq v10, v12, :cond_9

    if-ne v10, v3, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v22, v12

    goto :goto_4

    :cond_9
    :goto_3
    move/from16 v22, v3

    :goto_4
    if-ne v10, v12, :cond_a

    move/from16 v23, v3

    goto :goto_5

    :cond_a
    move/from16 v23, v12

    :goto_5
    add-int v18, v18, v19

    mul-int v22, v22, v18

    sub-int v11, v11, v22

    add-int v20, v20, v21

    mul-int v23, v23, v20

    sub-int v17, v17, v23

    :cond_b
    move/from16 v24, v17

    move/from16 v17, v11

    move/from16 v11, v24

    .line 591
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v18

    .line 592
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 593
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 595
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v21

    if-eqz v21, :cond_c

    const/16 v21, 0x0

    goto :goto_6

    :cond_c
    move/from16 v21, v2

    :goto_6
    move/from16 v8, v21

    :goto_7
    if-gt v8, v2, :cond_d

    .line 596
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 597
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 598
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 600
    :cond_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 601
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 602
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 603
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 604
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 605
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 607
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 608
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 609
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 611
    :cond_e
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 612
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 614
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 615
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 616
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 617
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 619
    :cond_f
    invoke-static {v0}, Landroidx/media3/container/NalUnitUtil;->skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V

    .line 620
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 621
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v2, :cond_10

    add-int/lit8 v12, v20, 0x5

    .line 625
    invoke-virtual {v0, v12}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x1

    goto :goto_8

    .line 628
    :cond_10
    invoke-virtual {v0, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 633
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/4 v4, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1a

    .line 634
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 635
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    const/16 v12, 0xff

    if-ne v2, v12, :cond_11

    const/16 v2, 0x10

    .line 637
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v12

    .line 638
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    if-eqz v12, :cond_13

    if-eqz v2, :cond_13

    int-to-float v8, v12

    int-to-float v2, v2

    div-float/2addr v8, v2

    goto :goto_9

    :cond_11
    sget-object v12, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 642
    array-length v3, v12

    if-ge v2, v3, :cond_12

    .line 643
    aget v8, v12, v2

    goto :goto_9

    .line 645
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NalUnitUtil"

    invoke-static {v3, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    :cond_13
    :goto_9
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 649
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 651
    :cond_14
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 652
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 654
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v3, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x2

    .line 655
    :goto_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 656
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v1

    .line 657
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    .line 658
    invoke-virtual {v0, v14}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 660
    invoke-static {v1}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v4

    .line 662
    invoke-static {v2}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v1

    goto :goto_b

    :cond_16
    move v1, v4

    goto :goto_b

    :cond_17
    move v1, v4

    move v3, v1

    .line 665
    :goto_b
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 666
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 667
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 669
    :cond_18
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 670
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_19

    mul-int/lit8 v11, v11, 0x2

    :cond_19
    move/from16 v20, v1

    move v2, v4

    goto :goto_c

    :cond_1a
    move v2, v4

    move v3, v2

    move/from16 v20, v3

    :goto_c
    move v1, v8

    move v0, v11

    .line 677
    new-instance v21, Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-object/from16 v4, v21

    move v8, v9

    move v9, v10

    move/from16 v10, v18

    move/from16 v11, v19

    move-object v12, v13

    move v13, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-direct/range {v4 .. v20}, Landroidx/media3/container/NalUnitUtil$H265SpsData;-><init>(IZIIIII[IIIIIFIII)V

    return-object v21
.end method

.method public static parsePpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 706
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parsePpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$PpsData;
    .locals 1

    .line 719
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    .line 720
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p0

    .line 721
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result p1

    .line 722
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 723
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result p2

    .line 724
    new-instance v0, Landroidx/media3/container/NalUnitUtil$PpsData;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/container/NalUnitUtil$PpsData;-><init>(IIZ)V

    return-object v0
.end method

.method public static parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 357
    invoke-static {p0, p1, p2}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object p0

    return-object p0
.end method

.method public static parseSpsNalUnitPayload([BII)Landroidx/media3/container/NalUnitUtil$SpsData;
    .locals 23

    .line 370
    new-instance v0, Landroidx/media3/container/ParsableNalUnitBitArray;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    const/16 v1, 0x8

    .line 371
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v3

    .line 372
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v4

    .line 373
    invoke-virtual {v0, v1}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v5

    .line 374
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

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

    .line 388
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 390
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    .line 392
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 393
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    .line 394
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 395
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

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

    .line 399
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v14, 0x6

    if-ge v13, v14, :cond_4

    move v14, v8

    goto :goto_4

    :cond_4
    const/16 v14, 0x40

    .line 401
    :goto_4
    invoke-static {v0, v14}, Landroidx/media3/container/NalUnitUtil;->skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V

    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 407
    :cond_6
    :goto_5
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v13, v12, 0x4

    .line 408
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v14

    if-nez v14, :cond_7

    .line 413
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v12

    add-int/lit8 v12, v12, 0x4

    move/from16 v16, v2

    move/from16 p1, v11

    move v15, v12

    const/4 v1, 0x0

    goto :goto_8

    :cond_7
    if-ne v14, v9, :cond_9

    .line 415
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    .line 416
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 417
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    .line 418
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v15

    move/from16 p1, v11

    int-to-long v10, v15

    move/from16 v16, v2

    const/4 v15, 0x0

    :goto_6
    int-to-long v1, v15

    cmp-long v1, v1, v10

    if-gez v1, :cond_8

    .line 420
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

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

    .line 423
    :goto_8
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    .line 424
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 426
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    add-int/2addr v2, v9

    .line 427
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    add-int/2addr v11, v9

    .line 428
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v12

    rsub-int/lit8 v17, v12, 0x2

    mul-int v17, v17, v11

    if-nez v12, :cond_a

    .line 431
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 434
    :cond_a
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    mul-int/2addr v2, v8

    mul-int/lit8 v17, v17, 0x10

    .line 437
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v11

    const/16 v18, 0x2

    if-eqz v11, :cond_e

    .line 439
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v11

    .line 440
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v19

    .line 441
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v20

    .line 442
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v21

    if-nez v16, :cond_b

    rsub-int/lit8 v16, v12, 0x2

    move/from16 v8, v16

    move/from16 v16, v9

    goto :goto_b

    :cond_b
    move/from16 v8, v16

    if-ne v8, v7, :cond_c

    move/from16 v16, v9

    goto :goto_9

    :cond_c
    move/from16 v16, v18

    :goto_9
    if-ne v8, v9, :cond_d

    move/from16 v8, v18

    goto :goto_a

    :cond_d
    move v8, v9

    :goto_a
    rsub-int/lit8 v22, v12, 0x2

    mul-int v8, v8, v22

    :goto_b
    add-int v11, v11, v19

    mul-int v11, v11, v16

    sub-int/2addr v2, v11

    add-int v20, v20, v21

    mul-int v20, v20, v8

    sub-int v17, v17, v20

    :cond_e
    move v8, v2

    .line 462
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v2, :cond_15

    .line 464
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x8

    .line 466
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    const/16 v2, 0xff

    if-ne v9, v2, :cond_f

    const/16 v2, 0x10

    .line 468
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v9

    .line 469
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v2

    if-eqz v9, :cond_11

    if-eqz v2, :cond_11

    int-to-float v9, v9

    int-to-float v2, v2

    div-float v16, v9, v2

    goto :goto_c

    :cond_f
    sget-object v2, Landroidx/media3/container/NalUnitUtil;->ASPECT_RATIO_IDC_VALUES:[F

    .line 473
    array-length v11, v2

    if-ge v9, v11, :cond_10

    .line 474
    aget v16, v2, v9

    goto :goto_c

    .line 476
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected aspect_ratio_idc value: "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "NalUnitUtil"

    invoke-static {v9, v2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    :cond_11
    :goto_c
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 480
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    .line 482
    :cond_12
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 483
    invoke-virtual {v0, v7}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 485
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v9, 0x1

    goto :goto_d

    :cond_13
    move/from16 v9, v18

    .line 486
    :goto_d
    invoke-virtual {v0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x8

    .line 487
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v7

    .line 488
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBits(I)I

    move-result v11

    .line 489
    invoke-virtual {v0, v2}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBits(I)V

    .line 491
    invoke-static {v7}, Landroidx/media3/common/ColorInfo;->isoColorPrimariesToColorSpace(I)I

    move-result v0

    .line 493
    invoke-static {v11}, Landroidx/media3/common/ColorInfo;->isoTransferCharacteristicsToColorTransfer(I)I

    move-result v2

    move/from16 v19, v2

    move/from16 v18, v9

    goto :goto_f

    :cond_14
    move/from16 v18, v9

    const/4 v0, -0x1

    goto :goto_e

    :cond_15
    const/4 v0, -0x1

    const/16 v18, -0x1

    :goto_e
    const/16 v19, -0x1

    .line 498
    :goto_f
    new-instance v20, Landroidx/media3/container/NalUnitUtil$SpsData;

    move-object/from16 v2, v20

    move v7, v10

    move/from16 v9, v17

    move/from16 v10, v16

    move/from16 v11, p1

    move/from16 v16, v1

    move/from16 v17, v0

    invoke-direct/range {v2 .. v19}, Landroidx/media3/container/NalUnitUtil$SpsData;-><init>(IIIIIIIFZZIIIZIII)V

    return-object v20
.end method

.method private static skipH265ScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;)V
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

    .line 841
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 843
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    goto :goto_3

    :cond_0
    shl-int/lit8 v4, v1, 0x1

    add-int/2addr v4, v2

    shl-int v4, v5, v4

    const/16 v6, 0x40

    .line 845
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    .line 848
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    :cond_1
    move v6, v0

    :goto_2
    if-ge v6, v4, :cond_2

    .line 851
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

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

.method private static skipScalingList(Landroidx/media3/container/ParsableNalUnitBitArray;I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v2, p1, :cond_2

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readSignedExpGolombCodedInt()I

    move-result v0

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x100

    .line 832
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

.method private static skipShortTermReferencePictureSets(Landroidx/media3/container/ParsableNalUnitBitArray;)V
    .locals 19

    .line 865
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [I

    const/4 v4, -0x1

    move v6, v1

    move v5, v4

    :goto_0
    if-ge v6, v0, :cond_11

    const/4 v7, 0x1

    if-eqz v6, :cond_c

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v8

    if-eqz v8, :cond_c

    add-int v8, v4, v5

    .line 884
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v9

    .line 885
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    mul-int/lit8 v9, v9, 0x2

    rsub-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v10

    add-int/lit8 v10, v8, 0x1

    .line 888
    new-array v11, v10, [Z

    move v12, v1

    :goto_1
    if-gt v12, v8, :cond_1

    .line 890
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    if-nez v13, :cond_0

    .line 891
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readBit()Z

    move-result v13

    aput-boolean v13, v11, v12

    goto :goto_2

    .line 894
    :cond_0
    aput-boolean v7, v11, v12

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 901
    :cond_1
    new-array v7, v10, [I

    .line 902
    new-array v10, v10, [I

    add-int/lit8 v12, v5, -0x1

    move v13, v1

    :goto_3
    if-ltz v12, :cond_3

    .line 904
    aget v14, v3, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_2

    add-int v15, v4, v12

    .line 905
    aget-boolean v15, v11, v15

    if-eqz v15, :cond_2

    add-int/lit8 v15, v13, 0x1

    .line 906
    aput v14, v7, v13

    move v13, v15

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_3
    if-gez v9, :cond_4

    .line 909
    aget-boolean v12, v11, v8

    if-eqz v12, :cond_4

    add-int/lit8 v12, v13, 0x1

    .line 910
    aput v9, v7, v13

    move v13, v12

    :cond_4
    move v12, v1

    :goto_4
    if-ge v12, v4, :cond_6

    .line 913
    aget v14, v2, v12

    add-int/2addr v14, v9

    if-gez v14, :cond_5

    .line 914
    aget-boolean v15, v11, v12

    if-eqz v15, :cond_5

    add-int/lit8 v15, v13, 0x1

    .line 915
    aput v14, v7, v13

    move v13, v15

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 919
    :cond_6
    invoke-static {v7, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v7

    add-int/lit8 v12, v4, -0x1

    move v14, v1

    :goto_5
    if-ltz v12, :cond_8

    .line 923
    aget v15, v2, v12

    add-int/2addr v15, v9

    if-lez v15, :cond_7

    .line 924
    aget-boolean v16, v11, v12

    if-eqz v16, :cond_7

    add-int/lit8 v16, v14, 0x1

    .line 925
    aput v15, v10, v14

    move/from16 v14, v16

    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    :cond_8
    if-lez v9, :cond_9

    .line 928
    aget-boolean v2, v11, v8

    if-eqz v2, :cond_9

    add-int/lit8 v2, v14, 0x1

    .line 929
    aput v9, v10, v14

    move v14, v2

    :cond_9
    move v2, v1

    :goto_6
    if-ge v2, v5, :cond_b

    .line 932
    aget v8, v3, v2

    add-int/2addr v8, v9

    if-lez v8, :cond_a

    add-int v12, v4, v2

    .line 933
    aget-boolean v12, v11, v12

    if-eqz v12, :cond_a

    add-int/lit8 v12, v14, 0x1

    .line 934
    aput v8, v10, v14

    move v14, v12

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 938
    :cond_b
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    move-object v3, v2

    move-object v2, v7

    move v4, v13

    move v5, v14

    goto :goto_b

    .line 940
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v2

    .line 941
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v3

    .line 942
    new-array v4, v2, [I

    move v5, v1

    :goto_7
    if-ge v5, v2, :cond_e

    if-lez v5, :cond_d

    add-int/lit8 v8, v5, -0x1

    .line 945
    aget v8, v4, v8

    goto :goto_8

    :cond_d
    move v8, v1

    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v9

    add-int/2addr v9, v7

    sub-int/2addr v8, v9

    aput v8, v4, v5

    .line 946
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 948
    :cond_e
    new-array v5, v3, [I

    move v8, v1

    :goto_9
    if-ge v8, v3, :cond_10

    if-lez v8, :cond_f

    add-int/lit8 v9, v8, -0x1

    .line 951
    aget v9, v5, v9

    goto :goto_a

    :cond_f
    move v9, v1

    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->readUnsignedExpGolombCodedInt()I

    move-result v10

    add-int/2addr v10, v7

    add-int/2addr v9, v10

    aput v9, v5, v8

    .line 952
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/container/ParsableNalUnitBitArray;->skipBit()V

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_10
    move-object/from16 v17, v4

    move v4, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v5

    move v5, v3

    move-object/from16 v3, v18

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static unescapeStream([BI)I
    .locals 8

    sget-object v0, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositionsLock:Ljava/lang/Object;

    .line 235
    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    if-ge v2, p1, :cond_2

    .line 239
    :try_start_0
    invoke-static {p0, v2, p1}, Landroidx/media3/container/NalUnitUtil;->findNextUnescapeIndex([BII)I

    move-result v2

    if-ge v2, p1, :cond_0

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 241
    array-length v5, v4

    if-gt v5, v3, :cond_1

    .line 243
    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    .line 244
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    :cond_1
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    add-int/lit8 v5, v3, 0x1

    .line 246
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

    sget-object v6, Landroidx/media3/container/NalUnitUtil;->scratchEscapePositions:[I

    .line 255
    aget v6, v6, v2

    sub-int/2addr v6, v5

    .line 257
    invoke-static {p0, v5, p0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v7, v4, 0x1

    .line 259
    aput-byte v1, p0, v4

    add-int/lit8 v4, v4, 0x2

    .line 260
    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    sub-int v1, p1, v4

    .line 265
    invoke-static {p0, v5, p0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    monitor-exit v0

    return p1

    .line 267
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
