.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 4

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput p1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iput v0, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    mul-int/2addr p1, p2

    .line 47
    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    :goto_0
    if-ge v0, p1, :cond_0

    .line 49
    aget p2, p3, v0

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x7

    and-int/lit16 v2, v2, 0x1fe

    and-int/lit16 p2, p2, 0xff

    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    add-int/2addr v1, v2

    add-int/2addr v1, p2

    .line 54
    div-int/lit8 v1, v1, 0x4

    int-to-byte p2, v1

    aput-byte p2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 0

    .line 65
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int/2addr p6, p4

    if-gt p6, p2, :cond_0

    add-int/2addr p7, p5

    if-gt p7, p3, :cond_0

    iput-object p1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iput p2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iput p3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iput p4, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    iput p5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    return-void

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crop rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 9

    .line 127
    new-instance v8, Lcom/google/zxing/RGBLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    iget v0, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int v4, v0, p1

    iget p0, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int v5, p0, p2

    move-object v0, v8

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    return-object v8
.end method

.method public getMatrix()[B
    .locals 7

    .line 92
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v0

    .line 93
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    return-object p0

    :cond_0
    mul-int v3, v0, v1

    .line 102
    new-array v4, v3, [B

    iget v5, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 107
    invoke-static {p0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    iget-object v3, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 114
    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 82
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 83
    :cond_0
    new-array p2, v0, [B

    :cond_1
    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr p1, v1

    iget-object p0, p0, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    const/4 v1, 0x0

    .line 86
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "Requested row is outside the image: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCropSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
