.class public Lcom/journeyapps/barcodescanner/MixedDecoder;
.super Lcom/journeyapps/barcodescanner/Decoder;
.source "MixedDecoder.java"


# instance fields
.field private isInverted:Z


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    return-void
.end method


# virtual methods
.method protected toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    .line 36
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p0, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/MixedDecoder;->isInverted:Z

    .line 39
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p0, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object p0
.end method
