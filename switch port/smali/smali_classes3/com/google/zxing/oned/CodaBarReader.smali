.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:F = 2.0f

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:F = 1.5f

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789-$:/.+ABCD"

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    return-void
.end method

.method static arrayContains([CC)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 283
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-char v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private counterAppend(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 254
    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 256
    array-length p1, v0

    if-lt v1, p1, :cond_0

    shl-int/lit8 p1, v1, 0x1

    .line 257
    new-array p1, p1, [I

    const/4 v2, 0x0

    .line 258
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v1, v2, :cond_3

    .line 265
    invoke-direct {p0, v1}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 266
    aget-char v2, v4, v2

    invoke-static {v3, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v1

    :goto_1
    add-int/lit8 v4, v1, 0x7

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 271
    aget v4, v4, v3

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    if-eq v1, v0, :cond_1

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v4, v1, -0x1

    .line 273
    aget v3, v3, v4

    div-int/lit8 v2, v2, 0x2

    if-lt v3, v2, :cond_2

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 233
    invoke-virtual {p1, v0}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v1

    .line 234
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v1, v2, :cond_1

    .line 241
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 244
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    xor-int/lit8 v4, v4, 0x1

    move v0, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    return-void

    .line 236
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private toNarrowWidePattern(I)I
    .locals 9

    add-int/lit8 v0, p1, 0x7

    iget v1, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_0

    return v2

    :cond_0
    iget-object p0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const v1, 0x7fffffff

    const/4 v3, 0x0

    move v4, p1

    move v5, v1

    move v6, v3

    :goto_0
    if-ge v4, v0, :cond_3

    .line 304
    aget v7, p0, v4

    if-ge v7, v5, :cond_1

    move v5, v7

    :cond_1
    if-le v7, v6, :cond_2

    move v6, v7

    :cond_2
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    add-int/2addr v5, v6

    .line 312
    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v4, p1, 0x1

    move v6, v3

    :goto_1
    if-ge v4, v0, :cond_6

    .line 317
    aget v7, p0, v4

    if-ge v7, v1, :cond_4

    move v1, v7

    :cond_4
    if-le v7, v6, :cond_5

    move v6, v7

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_6
    add-int/2addr v1, v6

    .line 325
    div-int/lit8 v1, v1, 0x2

    const/16 v0, 0x80

    move v4, v3

    move v6, v4

    :goto_2
    const/4 v7, 0x7

    if-ge v4, v7, :cond_9

    and-int/lit8 v7, v4, 0x1

    if-nez v7, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    move v7, v1

    :goto_3
    shr-int/lit8 v0, v0, 0x1

    add-int v8, p1, v4

    .line 332
    aget v8, p0, v8

    if-le v8, v7, :cond_8

    or-int/2addr v6, v0

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    sget-object p0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 337
    array-length p1, p0

    if-ge v3, p1, :cond_b

    .line 338
    aget p0, p0, v3

    if-ne p0, v6, :cond_a

    return v3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_b
    return v2
.end method

.method private validatePattern(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v2

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v5, p1

    move v4, v0

    :goto_0
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v7, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x6

    move v8, v7

    :goto_1
    if-ltz v8, :cond_0

    and-int/lit8 v9, v8, 0x1

    and-int/lit8 v10, v6, 0x1

    shl-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    .line 179
    aget v10, v1, v9

    iget-object v11, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v12, v5, v8

    aget v11, v11, v12

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 180
    aget v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v2, v9

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_0
    if-ge v4, v3, :cond_1

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    new-array v5, v4, [F

    new-array v4, v4, [F

    move v6, v0

    :goto_2
    const/4 v8, 0x2

    if-ge v6, v8, :cond_2

    const/4 v8, 0x0

    .line 197
    aput v8, v4, v6

    add-int/lit8 v8, v6, 0x2

    .line 198
    aget v9, v1, v6

    int-to-float v9, v9

    aget v10, v2, v6

    int-to-float v10, v10

    div-float/2addr v9, v10

    aget v10, v1, v8

    int-to-float v11, v10

    aget v12, v2, v8

    int-to-float v13, v12

    div-float/2addr v11, v13

    add-float/2addr v9, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    aput v9, v4, v8

    .line 199
    aput v9, v5, v6

    int-to-float v9, v10

    mul-float/2addr v9, v11

    const/high16 v10, 0x3fc00000    # 1.5f

    add-float/2addr v9, v10

    int-to-float v10, v12

    div-float/2addr v9, v10

    .line 200
    aput v9, v5, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sget-object v1, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    aget v1, v1, v2

    move v2, v7

    :goto_4
    if-ltz v2, :cond_4

    and-int/lit8 v6, v2, 0x1

    and-int/lit8 v8, v1, 0x1

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v6, v8

    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v9, p1, v2

    .line 211
    aget v8, v8, v9

    int-to-float v8, v8

    .line 212
    aget v9, v4, v6

    cmpg-float v9, v8, v9

    if-ltz v9, :cond_3

    aget v6, v5, v6

    cmpl-float v6, v8, v6

    if-gtz v6, :cond_3

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4

    .line 213
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_4
    if-ge v0, v3, :cond_5

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v1, 0x0

    .line 82
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 83
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 84
    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result p2

    iget-object v0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move v0, p2

    .line 89
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_e

    iget-object v4, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    int-to-char v5, v2

    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x8

    iget-object v5, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v7, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v2, v7, v2

    .line 100
    invoke-static {v5, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v4, v2, :cond_d

    :cond_1
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int/lit8 v0, v0, 0x7

    .line 106
    aget v2, v2, v0

    const/4 v5, -0x8

    move v7, v1

    :goto_1
    if-ge v5, v3, :cond_2

    iget-object v8, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    add-int v9, v4, v5

    .line 109
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v5, 0x2

    if-ge v4, v3, :cond_4

    .line 115
    div-int/2addr v7, v5

    if-lt v2, v7, :cond_3

    goto :goto_2

    .line 116
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 119
    :cond_4
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 123
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v7

    aget-char v4, v4, v7

    invoke-virtual {v3, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sget-object v3, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    .line 127
    invoke-static {v3, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 131
    invoke-static {v3, v2}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_a

    if-eqz p3, :cond_6

    .line 141
    sget-object v2, Lcom/google/zxing/DecodeHintType;->RETURN_CODABAR_START_END:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    :cond_6
    iget-object p3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    move p3, v1

    move v2, p3

    :goto_4
    if-ge p3, p2, :cond_8

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 148
    aget v3, v3, p3

    add-int/2addr v2, v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_8
    int-to-float p3, v2

    :goto_5
    if-ge p2, v0, :cond_9

    iget-object v3, p0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 152
    aget v3, v3, p2

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    int-to-float p2, v2

    .line 155
    new-instance v0, Lcom/google/zxing/Result;

    iget-object p0, p0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v5, [Lcom/google/zxing/ResultPoint;

    new-instance v3, Lcom/google/zxing/ResultPoint;

    int-to-float p1, p1

    invoke-direct {v3, p3, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v2, v1

    new-instance p3, Lcom/google/zxing/ResultPoint;

    invoke-direct {p3, p2, p1}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object p3, v2, v6

    sget-object p1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    const/4 p2, 0x0

    invoke-direct {v0, p0, p2, v2, p1}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v0

    .line 138
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 132
    :cond_b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 128
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_d
    move v0, v4

    goto/16 :goto_0

    .line 91
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method
