.class public final Lcom/google/zxing/InvertedLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "InvertedLuminanceSource.java"


# instance fields
.field private final delegate:Lcom/google/zxing/LuminanceSource;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 2

    .line 30
    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    iput-object p1, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 62
    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object p0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/LuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public getMatrix()[B
    .locals 4

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    .line 46
    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->getHeight()I

    move-result p0

    mul-int/2addr v1, p0

    .line 48
    new-array p0, v1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 50
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    rsub-int v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public getRow(I[B)[B
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    .line 36
    invoke-virtual {v0, p1, p2}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object p1

    .line 37
    invoke-virtual {p0}, Lcom/google/zxing/InvertedLuminanceSource;->getWidth()I

    move-result p0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p0, :cond_0

    .line 39
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public invert()Lcom/google/zxing/LuminanceSource;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    return-object p0
.end method

.method public isCropSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    .line 57
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isCropSupported()Z

    move-result p0

    return p0
.end method

.method public isRotateSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    .line 67
    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result p0

    return p0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 80
    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object p0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 1

    .line 85
    new-instance v0, Lcom/google/zxing/InvertedLuminanceSource;

    iget-object p0, p0, Lcom/google/zxing/InvertedLuminanceSource;->delegate:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/zxing/InvertedLuminanceSource;-><init>(Lcom/google/zxing/LuminanceSource;)V

    return-object v0
.end method
