.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    const/4 v0, 0x0

    .line 41
    aput v0, p0, v0

    const/4 v1, 0x1

    .line 42
    aput v0, p0, v1

    const/4 v2, 0x2

    .line 43
    aput v0, p0, v2

    const/4 v2, 0x3

    .line 44
    aput v0, p0, v2

    .line 45
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 46
    aget p2, p2, v1

    move v3, v0

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    if-ge p2, v2, :cond_1

    .line 49
    sget-object v4, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, p0, p2, v4}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v4

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    .line 50
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    array-length v4, p0

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_0

    aget v6, p0, v5

    add-int/2addr p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    :cond_1
    sget-object v3, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, p2, v1, v3}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object p2

    .line 57
    aget p2, p2, v1

    move v1, v0

    :goto_2
    if-ge v1, v4, :cond_3

    if-ge p2, v2, :cond_3

    .line 60
    sget-object v3, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, p0, p2, v3}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    .line 61
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    array-length v3, p0

    move v5, v0

    :goto_3
    if-ge v5, v3, :cond_2

    aget v6, p0, v5

    add-int/2addr p2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return p2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 0

    .line 72
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method
