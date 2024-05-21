.class public final Landroidx/media3/extractor/AvcConfig;
.super Ljava/lang/Object;
.source "AvcConfig.java"


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

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    iput p2, p0, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput p3, p0, Landroidx/media3/extractor/AvcConfig;->width:I

    iput p4, p0, Landroidx/media3/extractor/AvcConfig;->height:I

    iput p5, p0, Landroidx/media3/extractor/AvcConfig;->colorSpace:I

    iput p6, p0, Landroidx/media3/extractor/AvcConfig;->colorRange:I

    iput p7, p0, Landroidx/media3/extractor/AvcConfig;->colorTransfer:I

    iput p8, p0, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    iput-object p9, p0, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method private static buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 162
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 163
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 164
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildNalUnit([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 44
    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 45
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x3

    and-int/2addr v0, v1

    add-int/lit8 v4, v0, 0x1

    if-eq v4, v1, :cond_3

    .line 49
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 52
    invoke-static {p0}, Landroidx/media3/extractor/AvcConfig;->buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_1

    .line 56
    invoke-static {p0}, Landroidx/media3/extractor/AvcConfig;->buildNalUnitForChild(Landroidx/media3/common/util/ParsableByteArray;)[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_2

    .line 67
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 70
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length p0, p0

    .line 69
    invoke-static {v0, v4, p0}, Landroidx/media3/container/NalUnitUtil;->parseSpsNalUnit([BII)Landroidx/media3/container/NalUnitUtil$SpsData;

    move-result-object p0

    .line 71
    iget v0, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->width:I

    .line 72
    iget v1, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->height:I

    .line 73
    iget v2, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorSpace:I

    .line 74
    iget v5, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorRange:I

    .line 75
    iget v6, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->colorTransfer:I

    .line 76
    iget v7, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    .line 77
    iget v8, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->profileIdc:I

    iget v9, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iget p0, p0, Landroidx/media3/container/NalUnitUtil$SpsData;->levelIdc:I

    .line 78
    invoke-static {v8, v9, p0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->buildAvcCodecString(III)Ljava/lang/String;

    move-result-object p0

    move-object v11, p0

    move v8, v5

    move v9, v6

    move v10, v7

    move v5, v0

    move v6, v1

    move v7, v2

    goto :goto_2

    :cond_2
    const/4 p0, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    move v5, p0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v0

    move-object v11, v1

    .line 82
    :goto_2
    new-instance p0, Landroidx/media3/extractor/AvcConfig;

    move-object v2, p0

    invoke-direct/range {v2 .. v11}, Landroidx/media3/extractor/AvcConfig;-><init>(Ljava/util/List;IIIIIIFLjava/lang/String;)V

    return-object p0

    .line 47
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "Error parsing AVC config"

    .line 93
    invoke-static {v0, p0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method
