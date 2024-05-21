.class public final Lcom/google/zxing/datamatrix/DataMatrixWriter;
.super Ljava/lang/Object;
.source "DataMatrixWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;
    .locals 10

    .line 164
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v0

    .line 165
    invoke-virtual {p0}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v1

    .line 166
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 167
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 169
    div-int v4, v2, v0

    div-int v5, v3, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int v5, v0, v4

    sub-int/2addr v2, v5

    .line 171
    div-int/lit8 v2, v2, 0x2

    mul-int v5, v1, v4

    sub-int/2addr v3, v5

    .line 172
    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    if-lt p2, v1, :cond_1

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, p1, p2}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    goto :goto_1

    .line 180
    :cond_1
    :goto_0
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v6, v0, v1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v2, v5

    move v3, v2

    .line 185
    :goto_1
    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->clear()V

    move p1, v5

    :goto_2
    if-ge p1, v1, :cond_4

    move v7, v2

    move p2, v5

    :goto_3
    if-ge p2, v0, :cond_3

    .line 189
    invoke-virtual {p0, p2, p1}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 190
    invoke-virtual {v6, v7, v3, v4, v4}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    add-int/2addr v7, v4

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    return-object v6
.end method

.method private static encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;
    .locals 12

    .line 107
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    .line 110
    new-instance v2, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v1, :cond_9

    .line 117
    iget v6, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v6, v4, v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    move v6, v3

    move v8, v6

    .line 119
    :goto_1
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 120
    rem-int/lit8 v9, v6, 0x2

    if-nez v9, :cond_0

    move v9, v7

    goto :goto_2

    :cond_0
    move v9, v3

    :goto_2
    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v8, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    move v6, v3

    move v8, v6

    :goto_3
    if-ge v6, v0, :cond_6

    .line 128
    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v9, v6, v9

    if-nez v9, :cond_3

    .line 129
    invoke-virtual {v2, v8, v5, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v8, v8, 0x1

    .line 132
    :cond_3
    invoke-virtual {p0, v6, v4}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->getBit(II)Z

    move-result v9

    invoke-virtual {v2, v8, v5, v9}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v9, v8, 0x1

    .line 135
    iget v10, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    rem-int v10, v6, v10

    iget v11, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    sub-int/2addr v11, v7

    if-ne v10, v11, :cond_5

    .line 136
    rem-int/lit8 v10, v4, 0x2

    if-nez v10, :cond_4

    move v10, v7

    goto :goto_4

    :cond_4
    move v10, v3

    :goto_4
    invoke-virtual {v2, v9, v5, v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_5
    move v8, v9

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v5, 0x1

    .line 142
    iget v8, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    rem-int v8, v4, v8

    iget v9, p1, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    sub-int/2addr v9, v7

    if-ne v8, v9, :cond_8

    move v8, v3

    move v9, v8

    .line 144
    :goto_6
    invoke-virtual {p1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v10

    if-ge v8, v10, :cond_7

    .line 145
    invoke-virtual {v2, v9, v6, v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->set(IIZ)V

    add-int/2addr v9, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v5, v5, 0x2

    goto :goto_7

    :cond_8
    move v5, v6

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    :cond_9
    invoke-static {v2, p2, p3}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->convertByteMatrixToBitMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 43
    invoke-virtual/range {v0 .. v5}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    .line 53
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, p0, :cond_5

    if-ltz p3, :cond_4

    if-ltz p4, :cond_4

    .line 62
    sget-object p0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 p2, 0x0

    if-eqz p5, :cond_3

    .line 66
    sget-object v0, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-eqz v0, :cond_0

    move-object p0, v0

    .line 71
    :cond_0
    sget-object v0, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/Dimension;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 76
    :goto_0
    sget-object v1, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/zxing/Dimension;

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    move-object p5, p2

    :goto_1
    move-object p2, v0

    goto :goto_2

    :cond_3
    move-object p5, p2

    .line 84
    :goto_2
    invoke-static {p1, p0, p2, p5}, Lcom/google/zxing/datamatrix/encoder/HighLevelEncoder;->encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, p0, p2, p5, v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object p0

    .line 89
    invoke-static {p1, p0}, Lcom/google/zxing/datamatrix/encoder/ErrorCorrection;->encodeECC200(Ljava/lang/String;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance p2, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result p5

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v0

    invoke-direct {p2, p1, p5, v0}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;-><init>(Ljava/lang/CharSequence;II)V

    .line 93
    invoke-virtual {p2}, Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;->place()V

    .line 96
    invoke-static {p2, p0, p3, p4}, Lcom/google/zxing/datamatrix/DataMatrixWriter;->encodeLowLevel(Lcom/google/zxing/datamatrix/encoder/DefaultPlacement;Lcom/google/zxing/datamatrix/encoder/SymbolInfo;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Requested dimensions can\'t be negative: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x78

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only encode DATA_MATRIX, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Found empty contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
