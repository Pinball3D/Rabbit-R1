.class public final Lcom/google/common/base/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# annotations
.annotation runtime Lcom/google/common/base/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodedLength(Ljava/lang/CharSequence;)I
    .locals 5

    .line 53
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 58
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 64
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    invoke-static {p0, v1}, Lcom/google/common/base/Utf8;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    if-lt v2, v0, :cond_3

    return v2

    .line 75
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    int-to-long v0, v2

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "UTF-8 length does not fit in int: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 82
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    .line 85
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    .line 93
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Lcom/google/common/base/Utf8;->unpairedSurrogateMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public static isWellFormed([B)Z
    .locals 2

    const/4 v0, 0x0

    .line 114
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/base/Utf8;->isWellFormed([BII)Z

    move-result p0

    return p0
.end method

.method public static isWellFormed([BII)Z
    .locals 1

    add-int/2addr p2, p1

    .line 128
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    :goto_0
    if-ge p1, p2, :cond_1

    .line 131
    aget-byte v0, p0, p1

    if-gez v0, :cond_0

    .line 132
    invoke-static {p0, p1, p2}, Lcom/google/common/base/Utf8;->isWellFormedSlowPath([BII)Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static isWellFormedSlowPath([BII)Z
    .locals 7

    :cond_0
    :goto_0
    if-lt p1, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    .line 148
    aget-byte v1, p0, p1

    if-gez v1, :cond_c

    const/16 v2, -0x20

    const/16 v3, -0x41

    const/4 v4, 0x0

    if-ge v1, v2, :cond_4

    if-ne v0, p2, :cond_2

    return v4

    :cond_2
    const/16 v2, -0x3e

    if-lt v1, v2, :cond_3

    add-int/lit8 p1, p1, 0x2

    .line 157
    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_3
    return v4

    :cond_4
    const/16 v5, -0x10

    if-ge v1, v5, :cond_9

    add-int/lit8 v5, p1, 0x2

    if-lt v5, p2, :cond_5

    return v4

    .line 165
    :cond_5
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_8

    const/16 v6, -0x60

    if-ne v1, v2, :cond_6

    if-lt v0, v6, :cond_8

    :cond_6
    const/16 v2, -0x13

    if-ne v1, v2, :cond_7

    if-le v6, v0, :cond_8

    :cond_7
    add-int/lit8 p1, p1, 0x3

    .line 166
    aget-byte v0, p0, v5

    if-le v0, v3, :cond_0

    :cond_8
    return v4

    :cond_9
    add-int/lit8 v2, p1, 0x3

    if-lt v2, p2, :cond_a

    return v4

    :cond_a
    add-int/lit8 v2, p1, 0x2

    .line 180
    aget-byte v0, p0, v0

    if-gt v0, v3, :cond_b

    shl-int/lit8 v1, v1, 0x1c

    add-int/lit8 v0, v0, 0x70

    add-int/2addr v1, v0

    shr-int/lit8 v0, v1, 0x1e

    if-nez v0, :cond_b

    add-int/lit8 v0, p1, 0x3

    .line 181
    aget-byte v1, p0, v2

    if-gt v1, v3, :cond_b

    add-int/lit8 p1, p1, 0x4

    aget-byte v0, p0, v0

    if-le v0, v3, :cond_0

    :cond_b
    return v4

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private static unpairedSurrogateMsg(I)Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
