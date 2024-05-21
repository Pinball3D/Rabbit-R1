.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p1}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 p1, p1, 0x1f

    .line 64
    div-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p1, p2

    .line 65
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both dimensions must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(III[I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iput p3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iput-object p4, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    return-void
.end method

.method private buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v3, v4, :cond_1

    .line 468
    invoke-virtual {p0, v3, v2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, p1

    goto :goto_2

    :cond_0
    move-object v4, p2

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 470
    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 472
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/common/BitMatrix;
    .locals 11

    if-eqz p0, :cond_d

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v6, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v7, v5

    .line 107
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, "row lengths do not match"

    if-ge v3, v8, :cond_7

    .line 108
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0xa

    if-eq v8, v10, :cond_3

    .line 109
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v10, 0xd

    if-ne v8, v10, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    const/4 v8, 0x1

    .line 122
    aput-boolean v8, v0, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 125
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v3, v8

    .line 126
    aput-boolean v2, v0, v4

    goto :goto_1

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "illegal character encountered: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    if-le v4, v5, :cond_6

    if-ne v6, v1, :cond_4

    sub-int v6, v4, v5

    goto :goto_3

    :cond_4
    sub-int v5, v4, v5

    if-ne v5, v6, :cond_5

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v5, v4

    goto :goto_4

    .line 114
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    if-le v4, v5, :cond_a

    if-ne v6, v1, :cond_8

    sub-int p0, v4, v5

    move v6, p0

    goto :goto_5

    :cond_8
    sub-int p0, v4, v5

    if-ne p0, v6, :cond_9

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 139
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 144
    :cond_a
    :goto_6
    new-instance p0, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {p0, v6, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    :goto_7
    if-ge v2, v4, :cond_c

    .line 146
    aget-boolean p1, v0, v2

    if-eqz p1, :cond_b

    .line 147
    rem-int p1, v2, v6

    div-int p2, v2, v6

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    return-object p0

    .line 98
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parse([[Z)Lcom/google/zxing/common/BitMatrix;
    .locals 8

    .line 82
    array-length v0, p0

    const/4 v1, 0x0

    .line 83
    aget-object v2, p0, v1

    array-length v2, v2

    .line 84
    new-instance v3, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v3, v2, v0}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    .line 86
    aget-object v5, p0, v4

    move v6, v1

    :goto_1
    if-ge v6, v2, :cond_1

    .line 88
    aget-boolean v7, v5, v6

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {v3, v6, v4}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 216
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 218
    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitMatrix;
    .locals 4

    .line 477
    new-instance v0, Lcom/google/zxing/common/BitMatrix;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/zxing/common/BitMatrix;-><init>(III[I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 417
    instance-of v0, p1, Lcom/google/zxing/common/BitMatrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 420
    :cond_0
    check-cast p1, Lcom/google/zxing/common/BitMatrix;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 421
    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v2, p1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget-object p1, p1, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 422
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public flip(II)V
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    .line 188
    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 189
    aget v0, p0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    xor-int/2addr p1, v0

    aput p1, p0, p2

    return-void
.end method

.method public get(II)Z
    .locals 1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    .line 161
    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 162
    aget p0, p0, p2

    and-int/lit8 p1, p1, 0x1f

    ushr-int/2addr p0, p1

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBottomRightOnBit()[I
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 373
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 374
    aget v1, v1, v0

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 381
    div-int v2, v0, v1

    .line 382
    rem-int v1, v0, v1

    shl-int/lit8 v1, v1, 0x5

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 384
    aget p0, p0, v0

    const/16 v0, 0x1f

    :goto_1
    ushr-int v3, p0, v0

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, v0

    filled-new-array {v1, v2}, [I

    move-result-object p0

    return-object p0
.end method

.method public getEnclosingRectangle()[I
    .locals 11

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_0
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v5, v6, :cond_7

    move v6, v3

    :goto_1
    iget v7, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v6, v7, :cond_6

    iget-object v8, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    mul-int/2addr v7, v5

    add-int/2addr v7, v6

    .line 310
    aget v7, v8, v7

    if-eqz v7, :cond_5

    if-ge v5, v1, :cond_0

    move v1, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    shl-int/lit8 v8, v6, 0x5

    if-ge v8, v0, :cond_3

    move v9, v3

    :goto_2
    rsub-int/lit8 v10, v9, 0x1f

    shl-int v10, v7, v10

    if-nez v10, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v9, v8

    if-ge v9, v0, :cond_3

    move v0, v9

    :cond_3
    add-int/lit8 v9, v8, 0x1f

    if-le v9, v2, :cond_5

    const/16 v9, 0x1f

    :goto_3
    ushr-int v10, v7, v9

    if-nez v10, :cond_4

    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v8, v9

    if-le v8, v2, :cond_5

    move v2, v8

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    if-lt v2, v0, :cond_9

    if-ge v4, v1, :cond_8

    goto :goto_4

    :cond_8
    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object p0

    return-object p0

    :cond_9
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    return p0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 4

    if-eqz p2, :cond_1

    .line 259
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_1

    .line 260
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/zxing/common/BitArray;

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {p2, v0}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    :goto_1
    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v0, v1, :cond_2

    shl-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v3, p1, v0

    .line 266
    aget v2, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p2
.end method

.method public getRowSize()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    return p0
.end method

.method public getTopLeftOnBit()[I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 354
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget v3, v2, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    array-length v3, v2

    if-ne v1, v3, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 360
    div-int v3, v1, p0

    .line 361
    rem-int p0, v1, p0

    shl-int/lit8 p0, p0, 0x5

    .line 363
    aget v1, v2, v1

    :goto_1
    rsub-int/lit8 v2, v0, 0x1f

    shl-int v2, v1, v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr p0, v0

    filled-new-array {p0, v3}, [I

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    mul-int/lit8 v1, v0, 0x1f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 431
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public rotate180()V
    .locals 5

    .line 283
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    .line 284
    new-instance v1, Lcom/google/zxing/common/BitArray;

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v1, v2}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    iget v2, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v2, v2, 0x1

    .line 285
    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 287
    invoke-virtual {p0, v3, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    iget v4, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v3

    .line 289
    invoke-virtual {p0, v4, v1}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v1

    .line 290
    invoke-virtual {v0}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 291
    invoke-virtual {v1}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 292
    invoke-virtual {p0, v3, v1}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    .line 293
    invoke-virtual {p0, v4, v0}, Lcom/google/zxing/common/BitMatrix;->setRow(ILcom/google/zxing/common/BitArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(II)V
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    .line 172
    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 173
    aget v0, p0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    aput p1, p0, p2

    return-void
.end method

.method public setRegion(IIII)V
    .locals 7

    if-ltz p2, :cond_4

    if-ltz p1, :cond_4

    if-lez p4, :cond_3

    if-lez p3, :cond_3

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt p4, v0, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    if-gt p3, v0, :cond_2

    :goto_0
    if-ge p2, p4, :cond_1

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v0, p2

    move v1, p1

    :goto_1
    if-ge v1, p3, :cond_0

    iget-object v2, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 245
    div-int/lit8 v3, v1, 0x20

    add-int/2addr v3, v0

    aget v4, v2, v3

    and-int/lit8 v5, v1, 0x1f

    const/4 v6, 0x1

    shl-int v5, v6, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 240
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The region must fit inside the matrix"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Height and width must be at least 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 232
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Left and top must be nonnegative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 2

    .line 276
    invoke-virtual {p2}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object p2

    iget-object v0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    iget p0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p1, p0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, p1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "X "

    const-string v1, "  "

    .line 440
    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/common/BitMatrix;->toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\n"

    .line 449
    invoke-direct {p0, p1, p2, v0}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    invoke-direct {p0, p1, p2, p3}, Lcom/google/zxing/common/BitMatrix;->buildToString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unset(II)V
    .locals 2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr p2, v0

    .line 177
    div-int/lit8 v0, p1, 0x20

    add-int/2addr p2, v0

    iget-object p0, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 178
    aget v0, p0, p2

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, v0

    aput p1, p0, p2

    return-void
.end method

.method public xor(Lcom/google/zxing/common/BitMatrix;)V
    .locals 10

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 199
    iget v1, p1, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    iget v1, p1, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    iget v1, p1, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v0, v1, :cond_2

    .line 202
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget v1, p0, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v0, v1}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v3, v2

    .line 205
    invoke-virtual {p1, v2, v0}, Lcom/google/zxing/common/BitMatrix;->getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v4

    move v5, v1

    :goto_1
    iget v6, p0, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v5, v6, :cond_0

    iget-object v6, p0, Lcom/google/zxing/common/BitMatrix;->bits:[I

    add-int v7, v3, v5

    .line 207
    aget v8, v6, v7

    aget v9, v4, v5

    xor-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 200
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input matrix dimensions do not match"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
