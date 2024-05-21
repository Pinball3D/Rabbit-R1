.class public final Lcom/google/zxing/oned/UPCAReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCAReader.java"


# instance fields
.field private final ean13Reader:Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 38
    new-instance v0, Lcom/google/zxing/oned/EAN13Reader;

    invoke-direct {v0}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    return-void
.end method

.method private static maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_1

    .line 80
    new-instance v1, Lcom/google/zxing/Result;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v4, v2, v3}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    :cond_0
    return-object v1

    .line 86
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/zxing/oned/UPCEANReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/UPCEANReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result p0

    return p0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    .line 46
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 0

    .line 68
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method
