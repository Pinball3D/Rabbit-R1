.class public final Lcom/google/common/primitives/UnsignedInts;
.super Ljava/lang/Object;
.source "UnsignedInts.java"


# annotations
.annotation runtime Lcom/google/common/primitives/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;
    }
.end annotation


# static fields
.field static final INT_MASK:J = 0xffffffffL


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkedCast(J)I
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "out of range: %s"

    .line 95
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    long-to-int p0, p0

    return p0
.end method

.method public static compare(II)I
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/common/primitives/Ints;->compare(II)I

    move-result p0

    return p0
.end method

.method public static decode(Ljava/lang/String;)I
    .locals 4

    .line 317
    invoke-static {p0}, Lcom/google/common/primitives/ParseRequest;->fromString(Ljava/lang/String;)Lcom/google/common/primitives/ParseRequest;

    move-result-object v0

    .line 320
    :try_start_0
    iget-object v1, v0, Lcom/google/common/primitives/ParseRequest;->rawValue:Ljava/lang/String;

    iget v0, v0, Lcom/google/common/primitives/ParseRequest;->radix:I

    invoke-static {v1, v0}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 322
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Error parsing value: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v1, v0}, Ljava/lang/NumberFormatException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 325
    throw v1
.end method

.method public static divide(II)I
    .locals 2

    .line 283
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide p0

    div-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method static flip(I)I
    .locals 1

    const/high16 v0, -0x80000000

    xor-int/2addr p0, v0

    return p0
.end method

.method public static varargs join(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 4

    .line 167
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    array-length v0, p1

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 174
    aget v1, p1, v1

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 175
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 176
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v1

    invoke-static {v3}, Lcom/google/common/primitives/UnsignedInts;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "[I>;"
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/UnsignedInts$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([I)I
    .locals 3

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 148
    aget v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    .line 149
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 150
    aget v1, p0, v2

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    if-le v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    :cond_2
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result p0

    return p0
.end method

.method public static varargs min([I)I
    .locals 3

    .line 127
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 128
    aget v0, p0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    .line 129
    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_2

    .line 130
    aget v1, p0, v2

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    if-ge v1, v0, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result p0

    return p0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0xa

    .line 340
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInts;->parseUnsignedInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parseUnsignedInt(Ljava/lang/String;I)I
    .locals 4

    .line 358
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Input "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " in base "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not in the range of an unsigned integer"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static remainder(II)I
    .locals 2

    .line 297
    invoke-static {p0}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedInts;->toLong(I)J

    move-result-wide p0

    rem-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public static saturatedCast(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-wide v0, 0x100000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    long-to-int p0, p0

    return p0
.end method

.method public static sort([I)V
    .locals 2

    .line 221
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 222
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedInts;->sort([III)V

    return-void
.end method

.method public static sort([III)V
    .locals 2

    .line 232
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    .line 235
    aget v1, p0, v0

    invoke-static {v1}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    :goto_1
    if-ge p1, p2, :cond_1

    .line 239
    aget v0, p0, p1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedInts;->flip(I)I

    move-result v0

    aput v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static sortDescending([I)V
    .locals 2

    .line 250
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 251
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/common/primitives/UnsignedInts;->sortDescending([III)V

    return-void
.end method

.method public static sortDescending([III)V
    .locals 3

    .line 261
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    move v0, p1

    :goto_0
    const v1, 0x7fffffff

    if-ge v0, p2, :cond_0

    .line 264
    aget v2, p0, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    :goto_1
    if-ge p1, p2, :cond_1

    .line 268
    aget v0, p0, p1

    xor-int/2addr v0, v1

    aput v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static toLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xa

    .line 373
    invoke-static {p0, v0}, Lcom/google/common/primitives/UnsignedInts;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString(II)Ljava/lang/String;
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 389
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
