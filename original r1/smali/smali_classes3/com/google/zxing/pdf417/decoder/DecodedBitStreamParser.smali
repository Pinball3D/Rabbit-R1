.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final ECI_CHARSET:I = 0x39f

.field private static final ECI_GENERAL_PURPOSE:I = 0x39e

.field private static final ECI_USER_DEFINED:I = 0x39d

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_OPTIONAL_FIELD_ADDRESSEE:I = 0x4

.field private static final MACRO_PDF417_OPTIONAL_FIELD_CHECKSUM:I = 0x6

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_NAME:I = 0x0

.field private static final MACRO_PDF417_OPTIONAL_FIELD_FILE_SIZE:I = 0x5

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SEGMENT_COUNT:I = 0x1

.field private static final MACRO_PDF417_OPTIONAL_FIELD_SENDER:I = 0x3

.field private static final MACRO_PDF417_OPTIONAL_FIELD_TIME_STAMP:I = 0x2

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMBER_OF_SEQUENCE_CODEWORDS:I = 0x2

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    sput-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v1, 0x0

    .line 90
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const-wide/16 v1, 0x384

    .line 91
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    :goto_0
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 93
    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 94
    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 16

    move/from16 v0, p0

    .line 519
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x385

    const-wide/16 v3, 0x384

    const/16 v5, 0x3a0

    const/16 v6, 0x384

    const/4 v7, 0x6

    const/4 v9, 0x0

    if-eq v0, v2, :cond_5

    const/16 v2, 0x39c

    if-eq v0, v2, :cond_0

    move/from16 v0, p3

    goto/16 :goto_8

    :cond_0
    move/from16 v0, p3

    move v2, v9

    move v12, v2

    :goto_0
    const-wide/16 v13, 0x0

    .line 579
    :cond_1
    aget v15, p1, v9

    if-ge v0, v15, :cond_c

    if-nez v2, :cond_c

    add-int/lit8 v15, v0, 0x1

    .line 580
    aget v8, p1, v0

    if-ge v8, v6, :cond_2

    add-int/lit8 v12, v12, 0x1

    mul-long/2addr v13, v3

    int-to-long v10, v8

    add-long/2addr v13, v10

    goto :goto_1

    :cond_2
    if-eq v8, v5, :cond_3

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    :goto_1
    move v0, v15

    goto :goto_2

    :cond_3
    :pswitch_0
    const/4 v2, 0x1

    .line 599
    :goto_2
    rem-int/lit8 v8, v12, 0x5

    if-nez v8, :cond_1

    if-lez v12, :cond_1

    move v8, v9

    :goto_3
    if-ge v8, v7, :cond_4

    rsub-int/lit8 v10, v8, 0x5

    mul-int/lit8 v10, v10, 0x8

    shr-long v10, v13, v10

    long-to-int v10, v10

    int-to-byte v10, v10

    .line 603
    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    move v12, v9

    goto :goto_0

    :cond_5
    new-array v0, v7, [I

    add-int/lit8 v2, p3, 0x1

    .line 530
    aget v8, p1, p3

    move v10, v9

    move v11, v10

    :goto_4
    const-wide/16 v12, 0x0

    .line 531
    :goto_5
    aget v14, p1, v9

    if-ge v2, v14, :cond_9

    if-nez v10, :cond_9

    add-int/lit8 v14, v11, 0x1

    .line 532
    aput v8, v0, v11

    mul-long/2addr v12, v3

    int-to-long v3, v8

    add-long/2addr v12, v3

    add-int/lit8 v3, v2, 0x1

    .line 535
    aget v8, p1, v2

    if-eq v8, v5, :cond_8

    packed-switch v8, :pswitch_data_2

    packed-switch v8, :pswitch_data_3

    .line 549
    rem-int/lit8 v2, v14, 0x5

    if-nez v2, :cond_7

    if-lez v14, :cond_7

    move v2, v9

    :goto_6
    if-ge v2, v7, :cond_6

    rsub-int/lit8 v4, v2, 0x5

    mul-int/lit8 v4, v4, 0x8

    shr-long v14, v12, v4

    long-to-int v4, v14

    int-to-byte v4, v4

    .line 553
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    move v2, v3

    move v11, v9

    const-wide/16 v3, 0x384

    goto :goto_4

    :cond_7
    move v2, v3

    move v11, v14

    const-wide/16 v3, 0x384

    goto :goto_5

    :cond_8
    :pswitch_1
    move v11, v14

    const-wide/16 v3, 0x384

    const/4 v10, 0x1

    goto :goto_5

    :cond_9
    if-ne v2, v14, :cond_a

    if-ge v8, v6, :cond_a

    add-int/lit8 v3, v11, 0x1

    .line 564
    aput v8, v0, v11

    move v11, v3

    :cond_a
    :goto_7
    if-ge v9, v11, :cond_b

    .line 571
    aget v3, v0, v9

    int-to-byte v3, v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_b
    move v0, v2

    .line 611
    :cond_c
    :goto_8
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v1, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x384
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 108
    aget v2, p0, v2

    .line 109
    new-instance v3, Lcom/google/zxing/pdf417/PDF417ResultMetadata;

    invoke-direct {v3}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;-><init>()V

    const/4 v4, 0x2

    :goto_0
    const/4 v5, 0x0

    .line 110
    aget v5, p0, v5

    if-ge v4, v5, :cond_2

    const/16 v5, 0x391

    if-eq v2, v5, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    add-int/lit8 v4, v4, -0x1

    .line 150
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 139
    :pswitch_0
    invoke-static {p0, v4, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I

    move-result v2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    .line 126
    aget v1, p0, v4

    .line 127
    invoke-static {v1}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v2, v4, 0x2

    goto :goto_1

    :pswitch_3
    add-int/lit8 v2, v4, 0x1

    goto :goto_1

    .line 144
    :pswitch_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 123
    :pswitch_5
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 117
    :pswitch_6
    invoke-static {v2, p0, v1, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    .line 113
    :pswitch_7
    invoke-static {p0, v4, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v4, 0x1

    .line 120
    aget v4, p0, v4

    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 154
    aget v2, p0, v2

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 159
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_3

    .line 162
    new-instance p0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1, p1}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/DecoderResult;->setOther(Ljava/lang/Object;)V

    return-object p0

    .line 160
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 706
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    .line 708
    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 711
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    .line 714
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 712
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method static decodeMacroBlock([IILcom/google/zxing/pdf417/PDF417ResultMetadata;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 170
    aget v2, p0, v1

    if-gt v0, v2, :cond_7

    const/4 v0, 0x2

    new-array v2, v0, [I

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    .line 176
    aget v4, p0, p1

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {v2, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentIndex(I)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-static {p0, p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileId(Ljava/lang/String;)V

    .line 186
    aget v0, p0, p1

    const/16 v2, 0x39b

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 190
    :goto_1
    aget v4, p0, v1

    if-ge p1, v4, :cond_4

    .line 191
    aget v4, p0, p1

    const/16 v5, 0x39a

    if-eq v4, v5, :cond_3

    if-ne v4, v2, :cond_2

    add-int/lit8 v4, p1, 0x1

    .line 194
    aget v4, p0, v4

    packed-switch v4, :pswitch_data_0

    .line 231
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    .line 221
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 222
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 223
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setChecksum(I)V

    goto :goto_1

    .line 226
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 227
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileSize(J)V

    goto :goto_1

    .line 206
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 207
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 208
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setAddressee(Ljava/lang/String;)V

    goto :goto_1

    .line 201
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 202
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSender(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 217
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setTimestamp(J)V

    goto/16 :goto_1

    .line 211
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 212
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 213
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setSegmentCount(I)V

    goto/16 :goto_1

    .line 196
    :pswitch_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x2

    .line 197
    invoke-static {p0, p1, v4}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 239
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    const/4 v4, 0x1

    .line 236
    invoke-virtual {p2, v4}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setLastSegment(Z)V

    goto/16 :goto_1

    :cond_4
    if-eq v0, v3, :cond_6

    sub-int v1, p1, v0

    .line 246
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->isLastSegment()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v1, v1, -0x1

    :cond_5
    add-int/2addr v1, v0

    .line 250
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/PDF417ResultMetadata;->setOptionalData([I)V

    :cond_6
    return p1

    .line 172
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12

    .line 338
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    .line 339
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_13

    .line 342
    aget v4, p0, v3

    .line 344
    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x20

    const/16 v7, 0x1d

    const/16 v8, 0x1a

    const/16 v9, 0x391

    const/16 v10, 0x384

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    if-ge v4, v7, :cond_0

    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 478
    aget-char v6, v0, v4

    goto :goto_2

    :cond_0
    if-eq v4, v7, :cond_2

    if-eq v4, v10, :cond_2

    if-eq v4, v9, :cond_1

    goto :goto_1

    .line 488
    :cond_1
    aget v0, p1, v3

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    move-object v0, v1

    goto/16 :goto_5

    .line 483
    :cond_2
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_5

    :pswitch_1
    if-ge v4, v8, :cond_4

    add-int/lit8 v4, v4, 0x41

    int-to-char v6, v4

    :cond_3
    :goto_2
    move-object v0, v1

    goto/16 :goto_6

    :cond_4
    if-eq v4, v8, :cond_3

    if-eq v4, v10, :cond_5

    goto :goto_1

    .line 468
    :cond_5
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_5

    :pswitch_2
    if-ge v4, v7, :cond_6

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 443
    aget-char v6, v5, v4

    goto/16 :goto_6

    :cond_6
    if-eq v4, v7, :cond_8

    if-eq v4, v10, :cond_8

    if-eq v4, v9, :cond_7

    goto/16 :goto_5

    .line 451
    :cond_7
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 448
    :cond_8
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_5

    :pswitch_3
    const/16 v5, 0x19

    if-ge v4, v5, :cond_9

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 412
    aget-char v6, v5, v4

    goto/16 :goto_6

    :cond_9
    if-eq v4, v10, :cond_b

    if-eq v4, v9, :cond_a

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_5

    .line 431
    :pswitch_4
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    .line 422
    :pswitch_5
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto/16 :goto_5

    .line 416
    :pswitch_6
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    .line 434
    :cond_a
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 426
    :cond_b
    :pswitch_7
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    :pswitch_8
    if-ge v4, v8, :cond_c

    add-int/lit8 v4, v4, 0x61

    goto :goto_3

    :cond_c
    if-eq v4, v10, :cond_e

    if-eq v4, v9, :cond_d

    packed-switch v4, :pswitch_data_2

    goto :goto_5

    .line 396
    :pswitch_9
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    .line 391
    :pswitch_a
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    .line 388
    :pswitch_b
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_4

    .line 400
    :cond_d
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 403
    :cond_e
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    :pswitch_c
    if-ge v4, v8, :cond_f

    add-int/lit8 v4, v4, 0x41

    :goto_3
    int-to-char v6, v4

    goto :goto_6

    :cond_f
    if-eq v4, v10, :cond_11

    if-eq v4, v9, :cond_10

    packed-switch v4, :pswitch_data_3

    goto :goto_5

    .line 364
    :pswitch_d
    sget-object v1, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_4
    move v6, v2

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_6

    .line 359
    :pswitch_e
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    .line 356
    :pswitch_f
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    goto :goto_5

    .line 367
    :cond_10
    aget v4, p1, v3

    int-to-char v4, v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 370
    :cond_11
    sget-object v0, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    :goto_5
    move v6, v2

    :goto_6
    :pswitch_10
    if-eqz v6, :cond_12

    .line 496
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_13
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_6
        :pswitch_10
        :pswitch_5
        :pswitch_7
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1a
        :pswitch_10
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 629
    :cond_0
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v5, p1, 0x1

    .line 630
    aget v6, p0, p1

    const/4 v7, 0x1

    if-ne v5, v4, :cond_1

    move v2, v7

    :cond_1
    const/16 v4, 0x384

    if-ge v6, v4, :cond_2

    .line 635
    aput v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-eq v6, v4, :cond_3

    const/16 v4, 0x385

    if-eq v6, v4, :cond_3

    const/16 v4, 0x3a0

    if-eq v6, v4, :cond_3

    packed-switch v6, :pswitch_data_0

    :goto_1
    move p1, v5

    goto :goto_2

    :cond_3
    :pswitch_0
    move v2, v7

    .line 650
    :goto_2
    rem-int/lit8 v4, v3, 0xf

    if-eqz v4, :cond_4

    const/16 v4, 0x386

    if-eq v6, v4, :cond_4

    if-eqz v2, :cond_0

    :cond_4
    if-lez v3, :cond_0

    .line 655
    invoke-static {v0, v3}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v1

    goto :goto_0

    :cond_5
    return p1

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 10

    const/4 v0, 0x0

    .line 268
    aget v1, p0, v0

    sub-int v2, v1, p1

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    new-array v2, v2, [I

    sub-int/2addr v1, p1

    shl-int/2addr v1, v3

    .line 270
    new-array v1, v1, [I

    move v4, v0

    move v5, v4

    .line 274
    :goto_0
    aget v6, p0, v0

    if-ge p1, v6, :cond_3

    if-nez v4, :cond_3

    add-int/lit8 v6, p1, 0x1

    .line 275
    aget v7, p0, p1

    const/16 v8, 0x384

    if-ge v7, v8, :cond_0

    .line 277
    div-int/lit8 p1, v7, 0x1e

    aput p1, v2, v5

    add-int/lit8 p1, v5, 0x1

    .line 278
    rem-int/lit8 v7, v7, 0x1e

    aput v7, v2, p1

    add-int/lit8 v5, v5, 0x2

    :goto_1
    move p1, v6

    goto :goto_0

    :cond_0
    const/16 v9, 0x391

    if-eq v7, v9, :cond_2

    const/16 v9, 0x3a0

    if-eq v7, v9, :cond_1

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    add-int/lit8 p1, v5, 0x1

    .line 284
    aput v8, v2, v5

    move v5, p1

    goto :goto_1

    :cond_1
    :pswitch_1
    move v4, v3

    goto :goto_0

    .line 302
    :cond_2
    aput v9, v2, v5

    add-int/lit8 p1, p1, 0x2

    .line 303
    aget v6, p0, v6

    .line 304
    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 310
    :cond_3
    invoke-static {v2, v1, v5, p2}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
