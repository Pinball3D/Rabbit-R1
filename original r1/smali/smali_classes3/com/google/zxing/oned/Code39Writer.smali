.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 80
    :goto_1
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_e

    .line 88
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v3, :cond_d

    const/16 v4, 0x20

    if-eq v3, v4, :cond_c

    const/16 v5, 0x40

    if-eq v3, v5, :cond_b

    const/16 v5, 0x60

    if-eq v3, v5, :cond_a

    const/16 v5, 0x2d

    if-eq v3, v5, :cond_c

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_c

    const/16 v5, 0x1a

    if-gt v3, v5, :cond_0

    const/16 v4, 0x24

    .line 106
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x40

    int-to-char v3, v3

    .line 107
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    const/16 v5, 0x25

    if-ge v3, v4, :cond_1

    .line 109
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x26

    int-to-char v3, v3

    .line 110
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    const/16 v4, 0x2c

    const/16 v6, 0x2f

    if-le v3, v4, :cond_9

    if-eq v3, v6, :cond_9

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x39

    if-gt v3, v4, :cond_3

    int-to-char v3, v3

    .line 115
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_3
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_4

    .line 117
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xb

    int-to-char v3, v3

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_4
    const/16 v4, 0x5a

    if-gt v3, v4, :cond_5

    int-to-char v3, v3

    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v4, 0x5f

    if-gt v3, v4, :cond_6

    .line 122
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x10

    int-to-char v3, v3

    .line 123
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    const/16 v4, 0x7a

    if-gt v3, v4, :cond_7

    const/16 v4, 0x2b

    .line 125
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    .line 126
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_8

    .line 128
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x2b

    int-to-char v3, v3

    .line 129
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 131
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Requested content contains a non-encodable character: \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_9
    :goto_1
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const-string v3, "%W"

    .line 102
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    const-string v3, "%V"

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 96
    :cond_c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    const-string v3, "%U"

    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 138
    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 11

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const-string v0, "Requested contents should be less than 80 digits long, but got "

    const/16 v1, 0x50

    if-gt p0, v1, :cond_4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v3, p0, :cond_2

    .line 46
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 48
    invoke-static {p1}, Lcom/google/zxing/oned/Code39Writer;->tryToConvertToExtendedMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, v1, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " (extended full ASCII mode)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/16 v0, 0x9

    new-array v0, v0, [I

    mul-int/lit8 v1, p0, 0xd

    add-int/lit8 v1, v1, 0x19

    .line 60
    new-array v1, v1, [Z

    const/16 v3, 0x94

    .line 61
    invoke-static {v3, v0}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    const/4 v5, 0x1

    .line 62
    invoke-static {v1, v2, v0, v5}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v6

    filled-new-array {v5}, [I

    move-result-object v7

    .line 64
    invoke-static {v1, v6, v7, v2}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v8

    add-int/2addr v6, v8

    move v8, v2

    :goto_2
    if-ge v8, p0, :cond_3

    .line 67
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 68
    sget-object v10, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    aget v9, v10, v9

    invoke-static {v9, v0}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 69
    invoke-static {v1, v6, v0, v5}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v6, v9

    .line 70
    invoke-static {v1, v6, v7, v2}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 72
    :cond_3
    invoke-static {v3, v0}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 73
    invoke-static {v1, v6, v0, v5}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    return-object v1

    .line 41
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    .line 34
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
