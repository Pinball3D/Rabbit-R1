.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[[I

.field private static final MAX_AVG_VARIANCE:F = 0.38f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.5f

.field private static final N:I = 0x1

.field private static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3

.field private static final w:I = 0x2


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v0, 0x6

    const/16 v1, 0x8

    const/16 v2, 0xa

    const/16 v3, 0xc

    const/16 v4, 0xe

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    const/4 v5, 0x1

    filled-new-array {v5, v5, v5, v5}, [I

    move-result-object v6

    sput-object v6, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    const/4 v6, 0x2

    new-array v7, v6, [[I

    filled-new-array {v5, v5, v6}, [I

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x3

    filled-new-array {v5, v5, v8}, [I

    move-result-object v10

    aput-object v10, v7, v5

    sput-object v7, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    const/16 v7, 0x14

    new-array v7, v7, [[I

    filled-new-array {v5, v5, v6, v6, v5}, [I

    move-result-object v10

    aput-object v10, v7, v9

    filled-new-array {v6, v5, v5, v5, v6}, [I

    move-result-object v9

    aput-object v9, v7, v5

    filled-new-array {v5, v6, v5, v5, v6}, [I

    move-result-object v9

    aput-object v9, v7, v6

    filled-new-array {v6, v6, v5, v5, v5}, [I

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v9, 0x4

    filled-new-array {v5, v5, v6, v5, v6}, [I

    move-result-object v10

    aput-object v10, v7, v9

    const/4 v9, 0x5

    filled-new-array {v6, v5, v6, v5, v5}, [I

    move-result-object v10

    aput-object v10, v7, v9

    filled-new-array {v5, v6, v6, v5, v5}, [I

    move-result-object v9

    aput-object v9, v7, v0

    const/4 v0, 0x7

    filled-new-array {v5, v5, v5, v6, v6}, [I

    move-result-object v9

    aput-object v9, v7, v0

    filled-new-array {v6, v5, v5, v6, v5}, [I

    move-result-object v0

    aput-object v0, v7, v1

    const/16 v0, 0x9

    filled-new-array {v5, v6, v5, v6, v5}, [I

    move-result-object v1

    aput-object v1, v7, v0

    filled-new-array {v5, v5, v8, v8, v5}, [I

    move-result-object v0

    aput-object v0, v7, v2

    const/16 v0, 0xb

    filled-new-array {v8, v5, v5, v5, v8}, [I

    move-result-object v1

    aput-object v1, v7, v0

    filled-new-array {v5, v8, v5, v5, v8}, [I

    move-result-object v0

    aput-object v0, v7, v3

    const/16 v0, 0xd

    filled-new-array {v8, v8, v5, v5, v5}, [I

    move-result-object v1

    aput-object v1, v7, v0

    filled-new-array {v5, v5, v8, v5, v8}, [I

    move-result-object v0

    aput-object v0, v7, v4

    const/16 v0, 0xf

    filled-new-array {v8, v5, v8, v5, v5}, [I

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x10

    filled-new-array {v5, v8, v8, v5, v5}, [I

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x11

    filled-new-array {v5, v5, v5, v8, v8}, [I

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x12

    filled-new-array {v8, v5, v5, v8, v5}, [I

    move-result-object v1

    aput-object v1, v7, v0

    const/16 v0, 0x13

    filled-new-array {v5, v8, v5, v8, v5}, [I

    move-result-object v1

    aput-object v1, v7, v0

    sput-object v7, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 357
    array-length v0, v0

    const v1, 0x3ec28f5c    # 0.38f

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_2

    sget-object v5, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    .line 359
    aget-object v5, v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    .line 360
    invoke-static {p0, v5, v6}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v5

    cmpg-float v6, v5, v1

    if-gez v6, :cond_0

    move v4, v3

    move v1, v5

    goto :goto_1

    :cond_0
    cmpl-float v5, v5, v1

    if-nez v5, :cond_1

    move v4, v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-ltz v4, :cond_3

    .line 370
    rem-int/lit8 v4, v4, 0xa

    return v4

    .line 372
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 275
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 277
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 280
    aget-object v3, v3, v2

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    sget-object v3, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[[I

    .line 282
    aget-object v3, v3, v1

    invoke-static {p1, v0, v3}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    .line 288
    :goto_0
    aget v3, v0, v2

    invoke-direct {p0, p1, v3}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 293
    aget p0, v0, v2

    .line 294
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    aget v4, v0, v1

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 295
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    sub-int/2addr v2, p0

    aput v2, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    return-object v0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 301
    throw p0
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/4 v2, 0x5

    new-array v3, v2, [I

    new-array v4, v2, [I

    :cond_0
    if-ge p1, p2, :cond_2

    .line 173
    invoke-static {p0, p1, v1}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_1

    mul-int/lit8 v7, v6, 0x2

    .line 177
    aget v8, v1, v7

    aput v8, v3, v6

    add-int/lit8 v7, v7, 0x1

    .line 178
    aget v7, v1, v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 181
    :cond_1
    invoke-static {v3}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 182
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v6

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    .line 184
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v5, v0, :cond_0

    .line 186
    aget v6, v1, v5

    add-int/2addr p1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v0

    sget-object v1, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 201
    invoke-static {p1, v0, v1}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v0

    const/4 v1, 0x1

    .line 206
    aget v1, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 208
    invoke-direct {p0, p1, v2}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 316
    array-length v0, p2

    .line 317
    new-array v1, v0, [I

    .line 318
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    move v5, v3

    move v6, v5

    :goto_0
    if-ge p1, v2, :cond_3

    .line 324
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v5, :cond_0

    .line 325
    aget v7, v1, v6

    add-int/2addr v7, v8

    aput v7, v1, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v0, -0x1

    if-ne v6, v7, :cond_2

    const/high16 v7, 0x3f000000    # 0.5f

    .line 328
    invoke-static {v1, p2, v7}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[IF)F

    move-result v7

    const v9, 0x3ec28f5c    # 0.38f

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1

    filled-new-array {v4, p1}, [I

    move-result-object p0

    return-object p0

    .line 331
    :cond_1
    aget v7, v1, v3

    aget v9, v1, v8

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    add-int/lit8 v7, v6, -0x1

    const/4 v9, 0x2

    .line 332
    invoke-static {v1, v9, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    aput v3, v1, v7

    .line 334
    aput v3, v1, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 339
    :goto_1
    aput v8, v1, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 343
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p0

    if-eq p0, v0, :cond_0

    return p0

    .line 258
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget p0, p0, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    mul-int/lit8 p0, p0, 0xa

    .line 233
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p0, :cond_0

    if-ltz p2, :cond_0

    .line 236
    invoke-virtual {p1, p2}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    return-void

    .line 243
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 105
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v0

    .line 106
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object p0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x1

    .line 109
    aget v3, v0, v2

    const/4 v4, 0x0

    aget v5, p0, v4

    invoke-static {p2, v3, v5, v1}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 114
    sget-object v3, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    check-cast p3, [I

    goto :goto_0

    :cond_0
    move-object p3, v1

    :goto_0
    if-nez p3, :cond_1

    sget-object p3, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 123
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 126
    array-length v5, p3

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v6, v5, :cond_4

    aget v8, p3, v6

    if-ne v3, v8, :cond_2

    move p3, v2

    goto :goto_2

    :cond_2
    if-le v8, v7, :cond_3

    move v7, v8

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move p3, v4

    :goto_2
    if-nez p3, :cond_5

    if-le v3, v7, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p3, :cond_6

    .line 142
    :goto_3
    new-instance p3, Lcom/google/zxing/Result;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/zxing/ResultPoint;

    new-instance v5, Lcom/google/zxing/ResultPoint;

    aget v0, v0, v2

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {v5, v0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v5, v3, v4

    new-instance v0, Lcom/google/zxing/ResultPoint;

    aget p0, p0, v4

    int-to-float p0, p0

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v0, v3, v2

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {p3, p2, v1, v3, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object p3

    .line 139
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
