.class public Lcom/journeyapps/barcodescanner/InvertedDecoder;
.super Lcom/journeyapps/barcodescanner/Decoder;
.source "InvertedDecoder.java"


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    return-void
.end method


# virtual methods
.method protected toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .locals 1

    .line 34
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-virtual {p1}, Lcom/google/zxing/LuminanceSource;->invert()Lcom/google/zxing/LuminanceSource;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p0, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object p0
.end method
