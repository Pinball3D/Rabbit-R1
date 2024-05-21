.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x90

    if-gt v0, v1, :cond_0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 41
    invoke-static {p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 43
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method

.method private extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 14

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 403
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 404
    invoke-virtual {v1}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v1

    .line 406
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-ne v2, v0, :cond_5

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 410
    invoke-virtual {v2}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v2

    iget-object p0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 411
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result p0

    .line 413
    div-int/2addr v0, v2

    .line 414
    div-int/2addr v1, p0

    mul-int v3, v0, v2

    mul-int v4, v1, p0

    .line 419
    new-instance v5, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v5, v4, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    mul-int v6, v4, v2

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_3

    mul-int v8, v7, p0

    move v9, v3

    :goto_2
    if-ge v9, v2, :cond_2

    add-int/lit8 v10, v2, 0x2

    mul-int/2addr v10, v4

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v9

    add-int v11, v6, v9

    move v12, v3

    :goto_3
    if-ge v12, p0, :cond_1

    add-int/lit8 v13, p0, 0x2

    mul-int/2addr v13, v7

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v13, v12

    .line 429
    invoke-virtual {p1, v13, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_0

    add-int v13, v8, v12

    .line 431
    invoke-virtual {v5, v13, v11}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v5

    .line 407
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dimension of bitMatrix must match the version size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readCorner1(II)I
    .locals 5

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    .line 230
    invoke-direct {p0, v0, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/2addr v2, v3

    const/4 v4, 0x2

    .line 234
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x2

    .line 238
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    add-int/lit8 v2, p2, -0x1

    .line 242
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 246
    invoke-direct {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 250
    invoke-direct {p0, v4, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    const/4 v1, 0x3

    .line 254
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private readCorner2(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 271
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 275
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 279
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x4

    .line 283
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x3

    .line 287
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 291
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 295
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    .line 299
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private readCorner3(II)I
    .locals 7

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x0

    .line 316
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    add-int/lit8 v4, p2, -0x1

    .line 320
    invoke-direct {p0, v0, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p2, -0x3

    .line 324
    invoke-direct {p0, v1, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v5

    if-eqz v5, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v3

    add-int/lit8 v5, p2, -0x2

    .line 328
    invoke-direct {p0, v1, v5, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v3

    .line 332
    invoke-direct {p0, v1, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v3

    .line 336
    invoke-direct {p0, v3, v2, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v3

    .line 340
    invoke-direct {p0, v3, v5, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v3

    .line 344
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private readCorner4(II)I
    .locals 4

    add-int/lit8 v0, p1, -0x3

    const/4 v1, 0x0

    .line 361
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x2

    .line 365
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/2addr v0, v2

    add-int/lit8 v3, p1, -0x1

    .line 369
    invoke-direct {p0, v3, v1, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x2

    .line 373
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v3

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/2addr v0, v2

    add-int/lit8 v3, p2, -0x1

    .line 377
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/2addr v0, v2

    .line 381
    invoke-direct {p0, v2, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/2addr v0, v2

    const/4 v1, 0x2

    .line 385
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/2addr v0, v2

    const/4 v1, 0x3

    .line 389
    invoke-direct {p0, v1, v3, p1, p2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private readModule(IIII)Z
    .locals 0

    if-gez p1, :cond_0

    add-int/2addr p1, p3

    add-int/lit8 p3, p3, 0x4

    and-int/lit8 p3, p3, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p2, p3

    :cond_0
    if-gez p2, :cond_1

    add-int/2addr p2, p4

    add-int/lit8 p4, p4, 0x4

    and-int/lit8 p3, p4, 0x7

    rsub-int/lit8 p3, p3, 0x4

    add-int/2addr p1, p3

    :cond_1
    iget-object p3, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 164
    invoke-virtual {p3, p2, p1}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    iget-object p0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 165
    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result p0

    return p0
.end method

.method private readUtah(IIII)I
    .locals 5

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    .line 181
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p2, -0x1

    .line 185
    invoke-direct {p0, v0, v3, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 v2, v2, 0x1

    :cond_0
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, p1, -0x1

    .line 189
    invoke-direct {p0, v2, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    shl-int/lit8 v0, v0, 0x1

    .line 193
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x1

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 197
    invoke-direct {p0, v2, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v2

    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x1

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    .line 201
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x1

    :cond_4
    shl-int/lit8 v0, v0, 0x1

    .line 205
    invoke-direct {p0, p1, v3, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x1

    :cond_5
    shl-int/lit8 v0, v0, 0x1

    .line 209
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result p0

    if-eqz p0, :cond_6

    or-int/lit8 v0, v0, 0x1

    :cond_6
    return v0
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    .line 63
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result p0

    .line 64
    invoke-static {v0, p0}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    return-object p0
.end method

.method readCodewords()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 77
    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 83
    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 84
    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v4

    :cond_0
    const/4 v11, 0x1

    if-ne v10, v1, :cond_1

    if-nez v3, :cond_1

    if-nez v5, :cond_1

    add-int/lit8 v5, v6, 0x1

    .line 95
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v5

    move v5, v11

    goto/16 :goto_4

    :cond_1
    add-int/lit8 v12, v1, -0x2

    if-ne v10, v12, :cond_2

    if-nez v3, :cond_2

    and-int/lit8 v13, v2, 0x3

    if-eqz v13, :cond_2

    if-nez v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 100
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v7

    move v7, v11

    goto/16 :goto_4

    :cond_2
    add-int/lit8 v13, v1, 0x4

    if-ne v10, v13, :cond_3

    const/4 v13, 0x2

    if-ne v3, v13, :cond_3

    and-int/lit8 v13, v2, 0x7

    if-nez v13, :cond_3

    if-nez v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 105
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v8

    move v8, v11

    goto/16 :goto_4

    :cond_3
    if-ne v10, v12, :cond_4

    if-nez v3, :cond_4

    and-int/lit8 v12, v2, 0x7

    if-ne v12, v4, :cond_4

    if-nez v9, :cond_4

    add-int/lit8 v9, v6, 0x1

    .line 110
    invoke-direct {p0, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    add-int/lit8 v10, v10, -0x2

    add-int/lit8 v3, v3, 0x2

    move v6, v9

    move v9, v11

    goto :goto_4

    :cond_4
    :goto_0
    if-ge v10, v1, :cond_5

    if-ltz v3, :cond_5

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 117
    invoke-virtual {v11, v3, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_5

    add-int/lit8 v11, v6, 0x1

    .line 118
    invoke-direct {p0, v10, v3, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    move v6, v11

    :cond_5
    add-int/lit8 v11, v10, -0x2

    add-int/lit8 v12, v3, 0x2

    if-ltz v11, :cond_7

    if-lt v12, v2, :cond_6

    goto :goto_1

    :cond_6
    move v10, v11

    move v3, v12

    goto :goto_0

    :cond_7
    :goto_1
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v3, v3, 0x5

    :goto_2
    if-ltz v10, :cond_8

    if-ge v3, v2, :cond_8

    iget-object v11, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 128
    invoke-virtual {v11, v3, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_8

    add-int/lit8 v11, v6, 0x1

    .line 129
    invoke-direct {p0, v10, v3, v1, v2}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v12

    int-to-byte v12, v12

    aput-byte v12, v0, v6

    move v6, v11

    :cond_8
    add-int/lit8 v11, v10, 0x2

    add-int/lit8 v12, v3, -0x2

    if-ge v11, v1, :cond_a

    if-gez v12, :cond_9

    goto :goto_3

    :cond_9
    move v10, v11

    move v3, v12

    goto :goto_2

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x5

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-lt v10, v1, :cond_0

    if-lt v3, v2, :cond_0

    iget-object p0, p0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 139
    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result p0

    if-ne v6, p0, :cond_b

    return-object v0

    .line 140
    :cond_b
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method
