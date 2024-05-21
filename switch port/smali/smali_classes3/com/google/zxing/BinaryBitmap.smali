.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field private final binarizer:Lcom/google/zxing/Binarizer;

.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Binarizer;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    return-void

    .line 35
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Binarizer must be non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/BinaryBitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 108
    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/zxing/LuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    .line 109
    new-instance p2, Lcom/google/zxing/BinaryBitmap;

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0, p1}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object p2
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 85
    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    :cond_0
    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    return-object p0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/Binarizer;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 51
    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getHeight()I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 44
    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getWidth()I

    move-result p0

    return p0
.end method

.method public isCropSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 94
    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isCropSupported()Z

    move-result p0

    return p0
.end method

.method public isRotateSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 116
    invoke-virtual {p0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result p0

    return p0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 126
    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v1
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/BinaryBitmap;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 137
    invoke-virtual {v0}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;

    move-result-object v0

    .line 138
    new-instance v1, Lcom/google/zxing/BinaryBitmap;

    iget-object p0, p0, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {p0, v0}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method
