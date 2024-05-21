.class public final Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field static final ASCII_ENCODATION:I = 0x0

.field static final BASE256_ENCODATION:I = 0x5

.field static final C40_ENCODATION:I = 0x1

.field static final C40_UNLATCH:C = '\u00fe'

.field static final EDIFACT_ENCODATION:I = 0x4

.field static final LATCH_TO_ANSIX12:C = '\u00ee'

.field static final LATCH_TO_BASE256:C = '\u00e7'

.field static final LATCH_TO_C40:C = '\u00e6'

.field static final LATCH_TO_EDIFACT:C = '\u00f0'

.field static final LATCH_TO_TEXT:C = '\u00ef'

.field private static final MACRO_05:C = '\u00ec'

.field private static final MACRO_05_HEADER:Ljava/lang/String; = "[)>\u001e05\u001d"

.field private static final MACRO_06:C = '\u00ed'

.field private static final MACRO_06_HEADER:Ljava/lang/String; = "[)>\u001e06\u001d"

.field private static final MACRO_TRAILER:Ljava/lang/String; = "\u001e\u0004"

.field private static final PAD:C = '\u0081'

.field static final TEXT_ENCODATION:I = 0x2

.field static final UPPER_SHIFT:C = '\u00eb'

.field static final X12_ENCODATION:I = 0x3

.field static final X12_UNLATCH:C = '\u00fe'


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    .line 431
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 432
    :cond_0
    :goto_0
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-ge p1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    .line 436
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static encodeHighLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 142
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/zxing/datamatrix/encoder/Encoder;

    .line 161
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/ASCIIEncoder;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/C40Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/C40Encoder;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/TextEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/TextEncoder;-><init>()V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/X12Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/X12Encoder;-><init>()V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/EdifactEncoder;-><init>()V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/Base256Encoder;-><init>()V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 166
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;

    invoke-direct {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSymbolShape(Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)V

    .line 168
    invoke-virtual {v1, p2, p3}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSizeConstraints(Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)V

    const-string p1, "[)>\u001e05\u001d"

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "\u001e\u0004"

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0xec

    .line 171
    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 172
    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 173
    iget p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    goto :goto_0

    :cond_0
    const-string p1, "[)>\u001e06\u001d"

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xed

    .line 175
    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 176
    invoke-virtual {v1, v4}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->setSkipAtEnd(I)V

    .line 177
    iget p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    add-int/lit8 p0, p0, 0x7

    iput p0, v1, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->pos:I

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->hasMoreCharacters()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 182
    aget-object p0, v0, v2

    invoke-interface {p0, v1}, Lcom/google/zxing/datamatrix/encoder/Encoder;->encode(Lcom/google/zxing/datamatrix/encoder/EncoderContext;)V

    .line 183
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result p0

    if-ltz p0, :cond_1

    .line 184
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getNewEncoding()I

    move-result v2

    .line 185
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->resetEncoderSignal()V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewordCount()I

    move-result p0

    .line 189
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->updateSymbolInfo()V

    .line 190
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getSymbolInfo()Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getDataCapacity()I

    move-result p1

    if-ge p0, p1, :cond_3

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_3

    const/16 p0, 0xfe

    .line 195
    invoke-virtual {v1, p0}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->writeCodeword(C)V

    .line 198
    :cond_3
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_4

    const/16 p2, 0x81

    .line 200
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ge p2, p1, :cond_5

    .line 203
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->randomize253State(I)C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 206
    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/encoder/EncoderContext;->getCodewords()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findMinimums([F[II[B)I
    .locals 4

    const/4 v0, 0x0

    .line 361
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 363
    aget v2, p0, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    aput v2, p1, v1

    if-le p2, v2, :cond_0

    .line 367
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([BB)V

    move p2, v2

    :cond_0
    if-ne p2, v2, :cond_1

    .line 370
    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private static getMinimumCount([B)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    .line 380
    aget-byte v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method static illegalCharacter(C)V
    .locals 5

    .line 444
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    const-string v3, "0000"

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " (0x"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static isDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isExtendedASCII(C)Z
    .locals 1

    const/16 v0, 0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0xff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isNativeC40(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isNativeEDIFACT(C)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isNativeText(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isNativeX12(C)Z
    .locals 1

    .line 402
    invoke-static {p0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isSpecialB256(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static isX12TermSep(C)Z
    .locals 1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static lookAheadTest(Ljava/lang/CharSequence;II)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 210
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    return p2

    :cond_0
    const/4 v2, 0x6

    if-nez p2, :cond_1

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    goto :goto_0

    :cond_1
    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v4, 0x0

    .line 219
    aput v4, v3, p2

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    add-int v6, v1, v5

    .line 225
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const v8, 0x7fffffff

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x1

    if-ne v6, v7, :cond_7

    new-array v0, v2, [B

    new-array v1, v2, [I

    .line 229
    invoke-static {v3, v1, v8, v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    move-result v2

    .line 230
    invoke-static {v0}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v3

    aget v1, v1, v4

    if-ne v1, v2, :cond_2

    return v4

    :cond_2
    if-ne v3, v13, :cond_3

    aget-byte v1, v0, v9

    if-lez v1, :cond_3

    return v9

    :cond_3
    if-ne v3, v13, :cond_4

    aget-byte v1, v0, v12

    if-lez v1, :cond_4

    return v12

    :cond_4
    if-ne v3, v13, :cond_5

    aget-byte v1, v0, v10

    if-lez v1, :cond_5

    return v10

    :cond_5
    if-ne v3, v13, :cond_6

    aget-byte v0, v0, v11

    if-lez v0, :cond_6

    return v11

    :cond_6
    return v13

    .line 250
    :cond_7
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    add-int/lit8 v5, v5, 0x1

    .line 254
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isDigit(C)Z

    move-result v7

    const/high16 v14, 0x3f800000    # 1.0f

    if-eqz v7, :cond_8

    .line 255
    aget v7, v3, v4

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v7, v15

    aput v7, v3, v4

    goto :goto_2

    .line 256
    :cond_8
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 257
    aget v7, v3, v4

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    const/high16 v8, 0x40000000    # 2.0f

    add-float/2addr v7, v8

    .line 258
    aput v7, v3, v4

    goto :goto_2

    .line 260
    :cond_9
    aget v7, v3, v4

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    aput v7, v3, v4

    add-float/2addr v7, v14

    .line 261
    aput v7, v3, v4

    .line 265
    :goto_2
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeC40(C)Z

    move-result v7

    const v8, 0x402aaaab

    const v9, 0x3faaaaab

    const v16, 0x3f2aaaab

    if-eqz v7, :cond_a

    .line 266
    aget v7, v3, v13

    add-float v7, v7, v16

    aput v7, v3, v13

    goto :goto_3

    .line 267
    :cond_a
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 268
    aget v7, v3, v13

    add-float/2addr v7, v8

    aput v7, v3, v13

    goto :goto_3

    .line 270
    :cond_b
    aget v7, v3, v13

    add-float/2addr v7, v9

    aput v7, v3, v13

    .line 274
    :goto_3
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeText(C)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 275
    aget v7, v3, v10

    add-float v7, v7, v16

    aput v7, v3, v10

    goto :goto_4

    .line 276
    :cond_c
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 277
    aget v7, v3, v10

    add-float/2addr v7, v8

    aput v7, v3, v10

    goto :goto_4

    .line 279
    :cond_d
    aget v7, v3, v10

    add-float/2addr v7, v9

    aput v7, v3, v10

    .line 283
    :goto_4
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 284
    aget v7, v3, v11

    add-float v7, v7, v16

    aput v7, v3, v11

    goto :goto_5

    .line 285
    :cond_e
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 286
    aget v7, v3, v11

    const v8, 0x408aaaab

    add-float/2addr v7, v8

    aput v7, v3, v11

    goto :goto_5

    .line 288
    :cond_f
    aget v7, v3, v11

    const v8, 0x40555555

    add-float/2addr v7, v8

    aput v7, v3, v11

    .line 292
    :goto_5
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeEDIFACT(C)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 293
    aget v7, v3, v12

    const/high16 v8, 0x3f400000    # 0.75f

    add-float/2addr v7, v8

    aput v7, v3, v12

    goto :goto_6

    .line 294
    :cond_10
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isExtendedASCII(C)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 295
    aget v7, v3, v12

    const/high16 v8, 0x40880000    # 4.25f

    add-float/2addr v7, v8

    aput v7, v3, v12

    goto :goto_6

    .line 297
    :cond_11
    aget v7, v3, v12

    const/high16 v8, 0x40500000    # 3.25f

    add-float/2addr v7, v8

    aput v7, v3, v12

    .line 301
    :goto_6
    invoke-static {v6}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isSpecialB256(C)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x5

    .line 302
    aget v7, v3, v6

    const/high16 v8, 0x40800000    # 4.0f

    add-float/2addr v7, v8

    aput v7, v3, v6

    goto :goto_7

    :cond_12
    const/4 v6, 0x5

    .line 304
    aget v7, v3, v6

    add-float/2addr v7, v14

    aput v7, v3, v6

    :goto_7
    if-lt v5, v12, :cond_1c

    new-array v7, v2, [I

    new-array v8, v2, [B

    const v9, 0x7fffffff

    .line 311
    invoke-static {v3, v7, v9, v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->findMinimums([F[II[B)I

    .line 312
    invoke-static {v8}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->getMinimumCount([B)I

    move-result v9

    aget v14, v7, v4

    aget v15, v7, v6

    move v6, v15

    if-ge v14, v6, :cond_13

    aget v2, v7, v13

    if-ge v14, v2, :cond_13

    aget v2, v7, v10

    if-ge v14, v2, :cond_13

    aget v2, v7, v11

    if-ge v14, v2, :cond_13

    aget v2, v7, v12

    if-ge v14, v2, :cond_13

    return v4

    :cond_13
    if-lt v6, v14, :cond_1b

    aget-byte v2, v8, v13

    aget-byte v17, v8, v10

    add-int v2, v2, v17

    aget-byte v18, v8, v11

    add-int v2, v2, v18

    aget-byte v8, v8, v12

    add-int/2addr v2, v8

    if-nez v2, :cond_14

    goto :goto_9

    :cond_14
    if-ne v9, v13, :cond_15

    if-lez v8, :cond_15

    return v12

    :cond_15
    if-ne v9, v13, :cond_16

    if-lez v17, :cond_16

    return v10

    :cond_16
    if-ne v9, v13, :cond_17

    if-lez v18, :cond_17

    return v11

    :cond_17
    aget v2, v7, v13

    add-int/lit8 v8, v2, 0x1

    if-ge v8, v14, :cond_1c

    add-int/lit8 v8, v2, 0x1

    if-ge v8, v6, :cond_1c

    add-int/lit8 v6, v2, 0x1

    aget v8, v7, v12

    if-ge v6, v8, :cond_1c

    add-int/lit8 v6, v2, 0x1

    aget v8, v7, v10

    if-ge v6, v8, :cond_1c

    aget v6, v7, v11

    if-ge v2, v6, :cond_18

    return v13

    :cond_18
    if-ne v2, v6, :cond_1c

    add-int/2addr v1, v5

    add-int/2addr v1, v13

    .line 343
    :goto_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 344
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 345
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isX12TermSep(C)Z

    move-result v3

    if-eqz v3, :cond_19

    return v11

    .line 348
    :cond_19
    invoke-static {v2}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->isNativeX12(C)Z

    move-result v2

    if-eqz v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_1a
    return v13

    :cond_1b
    :goto_9
    const/4 v0, 0x5

    return v0

    :cond_1c
    const/4 v2, 0x6

    goto/16 :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40000000    # 2.0f
        0x40100000    # 2.25f
    .end array-data
.end method

.method private static randomize253State(I)C
    .locals 2

    mul-int/lit16 p0, p0, 0x95

    .line 129
    rem-int/lit16 p0, p0, 0xfd

    add-int/lit16 v0, p0, 0x82

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p0, -0x7c

    :goto_0
    int-to-char p0, v0

    return p0
.end method
