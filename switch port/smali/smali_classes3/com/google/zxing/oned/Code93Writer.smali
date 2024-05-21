.class public Lcom/google/zxing/oned/Code93Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code93Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static appendPattern([ZII)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    rsub-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    shl-int v2, v3, v2

    and-int/2addr v2, p2

    add-int v4, p1, v1

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    .line 97
    :goto_1
    aput-boolean v3, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    array-length p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p2, v1

    add-int/lit8 v3, p1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    .line 89
    :goto_1
    aput-boolean v2, p0, p1

    add-int/lit8 v1, v1, 0x1

    move p1, v3

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    return p0
.end method

.method private static computeChecksumIndex(Ljava/lang/String;I)I
    .locals 6

    .line 106
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v1

    :goto_0
    if-ltz v0, :cond_1

    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 107
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int/2addr v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p1, :cond_0

    move v3, v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 113
    :cond_1
    rem-int/lit8 v2, v2, 0x2f

    return v2
.end method

.method static convertToExtended(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 117
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    shl-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_f

    .line 120
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bU"

    .line 124
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    const/16 v4, 0x1a

    if-gt v3, v4, :cond_1

    const/16 v4, 0x61

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x40

    int-to-char v3, v3

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1
    const/16 v4, 0x1f

    const/16 v5, 0x62

    if-gt v3, v4, :cond_2

    .line 131
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x26

    int-to-char v3, v3

    .line 132
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_2
    const/16 v4, 0x20

    if-eq v3, v4, :cond_e

    const/16 v4, 0x24

    if-eq v3, v4, :cond_e

    const/16 v4, 0x25

    if-eq v3, v4, :cond_e

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x2c

    if-gt v3, v4, :cond_4

    const/16 v4, 0x63

    .line 138
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 139
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_4
    const/16 v4, 0x39

    if-gt v3, v4, :cond_5

    .line 141
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_5
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_6

    const-string v3, "cZ"

    .line 144
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    const/16 v4, 0x3f

    if-gt v3, v4, :cond_7

    .line 147
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0xb

    int-to-char v3, v3

    .line 148
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    const/16 v4, 0x40

    if-ne v3, v4, :cond_8

    const-string v3, "bV"

    .line 151
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const/16 v4, 0x5a

    if-gt v3, v4, :cond_9

    .line 154
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const/16 v4, 0x5f

    if-gt v3, v4, :cond_a

    .line 157
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x10

    int-to-char v3, v3

    .line 158
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const/16 v4, 0x60

    if-ne v3, v4, :cond_b

    const-string v3, "bW"

    .line 161
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    const/16 v4, 0x7a

    if-gt v3, v4, :cond_c

    const/16 v4, 0x64

    .line 164
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x20

    int-to-char v3, v3

    .line 165
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    const/16 v4, 0x7f

    if-gt v3, v4, :cond_d

    .line 168
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, -0x2b

    int-to-char v3, v3

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 171
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Requested content contains a non-encodable character: \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_e
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 175
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 6

    .line 39
    invoke-static {p1}, Lcom/google/zxing/oned/Code93Writer;->convertToExtended(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x50

    if-gt p1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x9

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 49
    new-array v0, v0, [Z

    .line 52
    sget v2, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v2

    :goto_0
    const-string v4, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    if-ge v3, p1, :cond_0

    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 56
    sget-object v5, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v4, v5, v4

    invoke-static {v0, v2, v4}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    .line 60
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result p1

    .line 61
    sget-object v3, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget v3, v3, p1

    invoke-static {v0, v2, v3}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result v3

    add-int/2addr v2, v3

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xf

    .line 66
    invoke-static {p0, p1}, Lcom/google/zxing/oned/Code93Writer;->computeChecksumIndex(Ljava/lang/String;I)I

    move-result p0

    .line 67
    sget-object p1, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    aget p0, p1, p0

    invoke-static {v0, v2, p0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result p0

    add-int/2addr v2, p0

    .line 70
    sget p0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    invoke-static {v0, v2, p0}, Lcom/google/zxing/oned/Code93Writer;->appendPattern([ZII)I

    move-result p0

    add-int/2addr v2, p0

    .line 73
    aput-boolean v1, v0, v2

    return-object v0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Requested contents should be less than 80 digits long after converting to extended encoding, but got "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 30
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
