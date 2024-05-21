.class public Lcom/journeyapps/barcodescanner/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private reader:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    return-void
.end method


# virtual methods
.method protected decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    .line 71
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    .line 73
    instance-of v1, v0, Lcom/google/zxing/MultiFormatReader;

    if-eqz v1, :cond_0

    .line 75
    check-cast v0, Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p1}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    .line 83
    invoke-interface {p0}, Lcom/google/zxing/Reader;->reset()V

    return-object p1

    .line 77
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    .line 83
    invoke-interface {p0}, Lcom/google/zxing/Reader;->reset()V

    .line 84
    throw p1

    :catch_0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    .line 83
    invoke-interface {p0}, Lcom/google/zxing/Reader;->reset()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public decode(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Result;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    .line 102
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPossibleResultPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/Decoder;->possibleResultPoints:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected getReader()Lcom/google/zxing/Reader;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/Decoder;->reader:Lcom/google/zxing/Reader;

    return-object p0
.end method

.method protected toBitmap(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/BinaryBitmap;
    .locals 1

    .line 61
    new-instance p0, Lcom/google/zxing/BinaryBitmap;

    new-instance v0, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v0, p1}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {p0, v0}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    return-object p0
.end method
