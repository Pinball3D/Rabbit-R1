.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2, p1}, [I

    move-result-object v0

    .line 34
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    iput p1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    iput p2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 3

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 71
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 72
    invoke-static {v2, p1}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(II)B
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 48
    aget-object p0, p0, p2

    aget-byte p0, p0, p1

    return p0
.end method

.method public getArray()[[B
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    return p0
.end method

.method public set(IIB)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 59
    aget-object p0, p0, p2

    aput-byte p3, p0, p1

    return-void
.end method

.method public set(III)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 63
    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public set(IIZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 67
    aget-object p0, p0, p2

    int-to-byte p2, p3

    aput-byte p2, p0, p1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 80
    aget-object v3, v3, v2

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v4, v5, :cond_2

    .line 82
    aget-byte v5, v3, v4

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    const-string v5, "  "

    .line 90
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v5, " 1"

    .line 87
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v5, " 0"

    .line 84
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
