.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final ALT_START_END_CHARS:[C

.field private static final CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

.field private static final DEFAULT_GUARD:C

.field private static final START_END_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    new-array v2, v0, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    const/4 v0, 0x0

    aget-char v0, v1, v0

    sput-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 9

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p0, v0, :cond_0

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    sget-object v3, Lcom/google/zxing/oned/CodaBarWriter;->START_END_CHARS:[C

    .line 51
    invoke-static {v3, p0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v4

    .line 52
    invoke-static {v3, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    sget-object v5, Lcom/google/zxing/oned/CodaBarWriter;->ALT_START_END_CHARS:[C

    .line 53
    invoke-static {v5, p0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result p0

    .line 54
    invoke-static {v5, v0}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v0

    const-string v5, "Invalid start/end guards: "

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p0, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    .line 62
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-nez v3, :cond_16

    if-nez v0, :cond_16

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v0, Lcom/google/zxing/oned/CodaBarWriter;->DEFAULT_GUARD:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/16 p0, 0x14

    move v0, v2

    .line 77
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_8

    .line 78
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_5

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/zxing/oned/CodaBarWriter;->CHARS_WHICH_ARE_TEN_LENGTH_EACH_AFTER_DECODED:[C

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v3, v4}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 p0, p0, 0xa

    goto :goto_3

    .line 83
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot encode : \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    add-int/lit8 p0, p0, 0x9

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/2addr p0, v0

    .line 89
    new-array p0, p0, [Z

    move v0, v1

    move v3, v0

    .line 91
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_15

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    if-eqz v0, :cond_9

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne v0, v5, :cond_e

    :cond_9
    const/16 v5, 0x2a

    if-eq v4, v5, :cond_d

    const/16 v5, 0x45

    if-eq v4, v5, :cond_c

    const/16 v5, 0x4e

    if-eq v4, v5, :cond_b

    const/16 v5, 0x54

    if-eq v4, v5, :cond_a

    goto :goto_5

    :cond_a
    const/16 v4, 0x41

    goto :goto_5

    :cond_b
    const/16 v4, 0x42

    goto :goto_5

    :cond_c
    const/16 v4, 0x44

    goto :goto_5

    :cond_d
    const/16 v4, 0x43

    :cond_e
    :goto_5
    move v5, v1

    .line 111
    :goto_6
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v6, v6

    if-ge v5, v6, :cond_10

    .line 113
    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    aget-char v6, v6, v5

    if-ne v4, v6, :cond_f

    .line 114
    sget-object v4, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    aget v4, v4, v5

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_10
    move v4, v1

    :goto_7
    move v5, v1

    move v7, v5

    move v6, v2

    :goto_8
    const/4 v8, 0x7

    if-ge v5, v8, :cond_13

    .line 122
    aput-boolean v6, p0, v3

    add-int/lit8 v3, v3, 0x1

    rsub-int/lit8 v8, v5, 0x6

    shr-int v8, v4, v8

    and-int/2addr v8, v2

    if-eqz v8, :cond_12

    if-ne v7, v2, :cond_11

    goto :goto_9

    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_12
    :goto_9
    xor-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v7, v1

    goto :goto_8

    .line 132
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_14

    .line 133
    aput-boolean v1, p0, v3

    add-int/lit8 v3, v3, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_15
    return-object p0

    .line 68
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

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

    .line 38
    sget-object p0, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
