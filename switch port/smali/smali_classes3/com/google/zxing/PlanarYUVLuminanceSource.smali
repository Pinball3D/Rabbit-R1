.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# static fields
.field private static final THUMBNAIL_SCALE_FACTOR:I = 0x2


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 1

    .line 47
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    add-int v0, p4, p6

    if-gt v0, p2, :cond_1

    add-int v0, p5, p7

    if-gt v0, p3, :cond_1

    iput-object p1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iput p2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    iput p3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    iput p4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    iput p5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    if-eqz p8, :cond_0

    .line 59
    invoke-direct {p0, p6, p7}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Crop rectangle does not fit within image data."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reverseHorizontal(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 159
    div-int/lit8 v3, p1, 0x2

    add-int/2addr v3, v1

    add-int v4, v1, p1

    add-int/lit8 v4, v4, -0x1

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    .line 161
    aget-byte v6, v0, v5

    .line 162
    aget-byte v7, v0, v4

    aput-byte v7, v0, v5

    .line 163
    aput-byte v6, v0, v4

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 10

    .line 114
    new-instance v9, Lcom/google/zxing/PlanarYUVLuminanceSource;

    iget-object v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    iget v0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int v4, v0, p1

    iget p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int v5, p0, p2

    const/4 v8, 0x0

    move-object v0, v9

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    return-object v9
.end method

.method public getMatrix()[B
    .locals 7

    .line 79
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v0, v2, :cond_0

    iget v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    return-object p0

    :cond_0
    mul-int v3, v0, v1

    .line 89
    new-array v4, v3, [B

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    mul-int/2addr v5, v2

    iget v6, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v5, v6

    const/4 v6, 0x0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 94
    invoke-static {p0, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_1
    :goto_0
    if-ge v6, v1, :cond_2

    mul-int v2, v6, v0

    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 101
    invoke-static {v3, v5, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v5, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getRow(I[B)[B
    .locals 2

    if-ltz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    if-eqz p2, :cond_0

    .line 69
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 70
    :cond_0
    new-array p2, v0, [B

    :cond_1
    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr p1, v1

    iget v1, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr p1, v1

    iget-object p0, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    .line 66
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

.method public getThumbnailHeight()I
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getThumbnailWidth()I
    .locals 0

    .line 146
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public isCropSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public renderThumbnail()[I
    .locals 12

    .line 125
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 126
    invoke-virtual {p0}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v0, v1

    .line 127
    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    iget v4, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_1

    mul-int v7, v6, v0

    move v8, v5

    :goto_1
    if-ge v8, v0, :cond_0

    shl-int/lit8 v9, v8, 0x1

    add-int/2addr v9, v4

    .line 134
    aget-byte v9, v3, v9

    and-int/lit16 v9, v9, 0xff

    add-int v10, v7, v8

    const v11, 0x10101

    mul-int/2addr v9, v11

    const/high16 v11, -0x1000000

    or-int/2addr v9, v11

    .line 135
    aput v9, v2, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    iget v7, p0, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
