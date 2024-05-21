.class public final Lcom/google/zxing/oned/UPCEWriter;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "UPCEWriter.java"


# static fields
.field private static final CODE_WIDTH:I = 0x33


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 8

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_2

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    .line 58
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Contents do not pass checksum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal contents"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 66
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested contents should be 7 or 8 digits long, but got "

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    :goto_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEWriter;->checkNumeric(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 72
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v3, :cond_3

    goto :goto_1

    .line 74
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number system must be 0 or 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_4
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 78
    sget-object v4, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v1, v4, v1

    aget v0, v1, v0

    const/16 v1, 0x33

    new-array v1, v1, [Z

    .line 81
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v1, p0, v4, v3}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v4

    move v5, v3

    :goto_2
    const/4 v6, 0x6

    if-gt v5, v6, :cond_6

    .line 84
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    rsub-int/lit8 v7, v5, 0x6

    shr-int v7, v0, v7

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_5

    add-int/lit8 v6, v6, 0xa

    .line 88
    :cond_5
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    aget-object v6, v7, v6

    invoke-static {v1, v4, v6, p0}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 91
    :cond_6
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->END_PATTERN:[I

    invoke-static {v1, v4, p1, p0}, Lcom/google/zxing/oned/UPCEWriter;->appendPattern([ZI[IZ)I

    return-object v1

    :catch_1
    move-exception p0

    .line 52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected getSupportedWriteFormats()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
