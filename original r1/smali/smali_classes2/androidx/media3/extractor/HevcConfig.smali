.class public final Landroidx/media3/extractor/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# static fields
.field private static final SPS_NAL_UNIT_TYPE:I = 0x21


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final colorRange:I

.field public final colorSpace:I

.field public final colorTransfer:I

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIIIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/HevcConfig;->initializationData:Ljava/util/List;

    iput p2, p0, Landroidx/media3/extractor/HevcConfig;->nalUnitLengthFieldLength:I

    iput p3, p0, Landroidx/media3/extractor/HevcConfig;->width:I

    iput p4, p0, Landroidx/media3/extractor/HevcConfig;->height:I

    iput p5, p0, Landroidx/media3/extractor/HevcConfig;->colorSpace:I

    iput p6, p0, Landroidx/media3/extractor/HevcConfig;->colorRange:I

    iput p7, p0, Landroidx/media3/extractor/HevcConfig;->colorTransfer:I

    iput p8, p0, Landroidx/media3/extractor/HevcConfig;->pixelWidthHeightRatio:F

    iput-object p9, p0, Landroidx/media3/extractor/HevcConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/HevcConfig;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 43
    :try_start_0
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 44
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 47
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_1

    .line 51
    invoke-virtual {v0, v7}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 54
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    .line 56
    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 62
    new-array v3, v6, [B

    const/4 v5, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v13, v5

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move/from16 v17, v16

    move/from16 v18, v8

    move-object/from16 v19, v9

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v5, v2, :cond_4

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v9, v9, 0x3f

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 77
    sget-object v7, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v4, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v4, v4

    move/from16 v20, v2

    const/4 v2, 0x0

    invoke-static {v7, v2, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    sget-object v4, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    array-length v4, v4

    add-int/2addr v8, v4

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 84
    invoke-static {v4, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x21

    if-ne v9, v4, :cond_2

    if-nez v11, :cond_2

    add-int v4, v8, v12

    .line 88
    invoke-static {v3, v8, v4}, Landroidx/media3/container/NalUnitUtil;->parseH265SpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$H265SpsData;

    move-result-object v4

    .line 90
    iget v13, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->width:I

    .line 91
    iget v14, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->height:I

    .line 92
    iget v15, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorSpace:I

    .line 93
    iget v7, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorRange:I

    .line 94
    iget v2, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->colorTransfer:I

    move/from16 v16, v2

    .line 95
    iget v2, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    move/from16 v17, v2

    .line 96
    iget v2, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    move/from16 v18, v7

    iget-boolean v7, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    move/from16 v27, v9

    iget v9, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    move/from16 v28, v10

    iget v10, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    move/from16 v19, v13

    iget-object v13, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->constraintBytes:[I

    iget v4, v4, Landroidx/media3/container/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    move/from16 v21, v2

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v13

    move/from16 v26, v4

    .line 97
    invoke-static/range {v21 .. v26}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    move/from16 v13, v19

    move-object/from16 v19, v2

    move/from16 v29, v17

    move/from16 v17, v16

    move/from16 v16, v18

    move/from16 v18, v29

    goto :goto_4

    :cond_2
    move/from16 v27, v9

    move/from16 v28, v10

    :goto_4
    add-int/2addr v8, v12

    .line 106
    invoke-virtual {v0, v12}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v20

    move/from16 v9, v27

    move/from16 v10, v28

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move/from16 v20, v2

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_4
    if-nez v6, :cond_5

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_5
    move-object v11, v0

    .line 112
    new-instance v0, Landroidx/media3/extractor/HevcConfig;

    const/4 v2, 0x1

    add-int/lit8 v12, v1, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v19}, Landroidx/media3/extractor/HevcConfig;-><init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    .line 123
    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0
.end method
