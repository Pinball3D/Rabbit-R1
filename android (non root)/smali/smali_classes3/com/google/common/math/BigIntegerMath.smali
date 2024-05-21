.class public final Lcom/google/common/math/BigIntegerMath;
.super Ljava/lang/Object;
.source "BigIntegerMath.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;
    }
.end annotation


# static fields
.field private static final LN_10:D

.field private static final LN_2:D

.field static final SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

.field static final SQRT2_PRECOMPUTE_THRESHOLD:I = 0x100


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 139
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "16a09e667f3bcc908b2fb1366ea957d3e3adec17512775099da2f590b0667322a"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 217
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 218
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)Ljava/math/BigInteger;
    .locals 10

    const-string v0, "n"

    .line 476
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    .line 477
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x1

    if-gt p1, p0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "k (%s) > n (%s)"

    .line 478
    invoke-static {v1, v2, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    shr-int/lit8 v1, p0, 0x1

    if-le p1, v1, :cond_1

    sub-int p1, p0, p1

    .line 482
    :cond_1
    sget-object v1, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    array-length v1, v1

    if-ge p1, v1, :cond_2

    sget-object v1, Lcom/google/common/math/LongMath;->biggestBinomials:[I

    aget v1, v1, p1

    if-gt p0, v1, :cond_2

    .line 483
    invoke-static {p0, p1}, Lcom/google/common/math/LongMath;->binomial(II)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 486
    :cond_2
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    int-to-long v2, p0

    .line 491
    sget-object v4, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v2, v3, v4}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v4

    const-wide/16 v5, 0x1

    :goto_1
    move v7, v4

    :goto_2
    if-ge v0, p1, :cond_4

    sub-int v8, p0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v7, v4

    const/16 v9, 0x3f

    if-lt v7, v9, :cond_3

    .line 506
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 507
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, v8

    int-to-long v5, v0

    goto :goto_1

    :cond_3
    int-to-long v8, v8

    mul-long/2addr v2, v8

    int-to-long v8, v0

    mul-long/2addr v5, v8

    goto :goto_2

    .line 519
    :cond_4
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 520
    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static ceilingPowerOfTwo(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 62
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static divide(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 1

    .line 374
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 375
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    const/4 p1, 0x0

    .line 376
    invoke-virtual {v0, p0, p1, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static factorial(I)Ljava/math/BigInteger;
    .locals 17

    move/from16 v0, p0

    const-string v1, "n"

    .line 392
    invoke-static {v1, v0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 395
    sget-object v1, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 396
    sget-object v1, Lcom/google/common/math/LongMath;->factorials:[J

    aget-wide v0, v1, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 400
    :cond_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lcom/google/common/math/IntMath;->log2(ILjava/math/RoundingMode;)I

    move-result v1

    mul-int/2addr v1, v0

    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    const/16 v3, 0x40

    invoke-static {v1, v3, v2}, Lcom/google/common/math/IntMath;->divide(IILjava/math/RoundingMode;)I

    move-result v1

    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    sget-object v1, Lcom/google/common/math/LongMath;->factorials:[J

    array-length v1, v1

    .line 405
    sget-object v4, Lcom/google/common/math/LongMath;->factorials:[J

    add-int/lit8 v5, v1, -0x1

    aget-wide v4, v4, v5

    .line 407
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    shr-long/2addr v4, v6

    .line 411
    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v7}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    int-to-long v9, v1

    .line 412
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v1}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    shl-int v1, v8, v1

    :goto_0
    int-to-long v12, v0

    cmp-long v12, v9, v12

    if-gtz v12, :cond_3

    int-to-long v13, v1

    and-long v12, v9, v13

    const-wide/16 v15, 0x0

    cmp-long v12, v12, v15

    if-eqz v12, :cond_1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v11, v11, 0x1

    .line 424
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v12

    shr-long v13, v9, v12

    add-int/2addr v6, v12

    sub-int v12, v11, v12

    add-int/2addr v12, v7

    if-lt v12, v3, :cond_2

    .line 431
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, 0x1

    :cond_2
    mul-long/2addr v4, v13

    .line 436
    sget-object v7, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v4, v5, v7}, Lcom/google/common/math/LongMath;->log2(JLjava/math/RoundingMode;)I

    move-result v7

    add-int/2addr v7, v8

    const-wide/16 v12, 0x1

    add-long/2addr v9, v12

    goto :goto_0

    :cond_3
    const-wide/16 v12, 0x1

    cmp-long v0, v4, v12

    if-lez v0, :cond_4

    .line 440
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_4
    invoke-static {v2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method static fitsInLong(Ljava/math/BigInteger;)Z
    .locals 1

    .line 526
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static floorPowerOfTwo(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 74
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v1}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static isPowerOfTwo(Ljava/math/BigInteger;)Z
    .locals 2

    .line 79
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static listProduct(Ljava/util/List;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 447
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method static listProduct(Ljava/util/List;II)Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/math/BigInteger;",
            ">;II)",
            "Ljava/math/BigInteger;"
        }
    .end annotation

    sub-int v0, p2, p1

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    add-int v0, p2, p1

    ushr-int/2addr v0, v1

    .line 463
    invoke-static {p0, p1, v0}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p0, v0, p2}, Lcom/google/common/math/BigIntegerMath;->listProduct(Ljava/util/List;II)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 459
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 457
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigInteger;

    add-int/2addr p1, v1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 455
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    .line 453
    :cond_3
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    return-object p0
.end method

.method public static log10(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 7

    const-string v0, "x"

    .line 152
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 153
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->log10(JLjava/math/RoundingMode;)I

    move-result p0

    return p0

    .line 157
    :cond_0
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lcom/google/common/math/BigIntegerMath;->LN_2:D

    mul-double/2addr v0, v2

    sget-wide v2, Lcom/google/common/math/BigIntegerMath;->LN_10:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 158
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 159
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-lez v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 174
    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 175
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 178
    :cond_2
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 179
    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    move v5, v4

    move v4, v2

    move v2, v5

    :goto_0
    if-gtz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 184
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 185
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    move-object v5, v3

    move-object v3, v1

    move-object v1, v5

    move v6, v4

    move v4, v2

    move v2, v6

    goto :goto_0

    :cond_3
    move v2, v4

    .line 193
    :goto_1
    sget-object v3, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    .line 213
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/4 p1, 0x2

    .line 209
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 210
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 211
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    :goto_2
    return v0

    .line 203
    :pswitch_1
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_3
    return v0

    :pswitch_2
    if-nez v2, :cond_6

    const/4 p0, 0x1

    goto :goto_4

    :cond_6
    const/4 p0, 0x0

    .line 195
    :goto_4
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I
    .locals 3

    .line 93
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    const-string v1, "x"

    invoke-static {v1, v0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 94
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 95
    sget-object v2, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    .line 127
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    const/16 p1, 0x100

    if-ge v1, p1, :cond_1

    sget-object p1, Lcom/google/common/math/BigIntegerMath;->SQRT2_PRECOMPUTED_BITS:Ljava/math/BigInteger;

    rsub-int v2, v1, 0x100

    .line 111
    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x2

    .line 122
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    if-ge p0, p1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 104
    :pswitch_1
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    .line 97
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->isPowerOfTwo(Ljava/math/BigInteger;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static roundToDouble(Ljava/math/BigInteger;Ljava/math/RoundingMode;)D
    .locals 1

    .line 335
    sget-object v0, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->INSTANCE:Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/math/BigIntegerMath$BigIntegerToDoubleRounder;->roundToDouble(Ljava/lang/Number;Ljava/math/RoundingMode;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sqrt(Ljava/math/BigInteger;Ljava/math/RoundingMode;)Ljava/math/BigInteger;
    .locals 3

    const-string v0, "x"

    .line 230
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    .line 231
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->fitsInLong(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/common/math/LongMath;->sqrt(JLjava/math/RoundingMode;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 235
    sget-object v1, Lcom/google/common/math/BigIntegerMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    .line 259
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 251
    :pswitch_0
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 257
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_0
    return-object v0

    .line 243
    :pswitch_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    mul-int/2addr p1, p1

    .line 245
    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-ne p1, v2, :cond_2

    .line 246
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    sget-object p0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    return-object v0

    .line 237
    :pswitch_2
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    .line 309
    invoke-static {p0}, Lcom/google/common/math/DoubleUtils;->bigToDouble(Ljava/math/BigInteger;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sget-object p0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-static {v0, v1, p0}, Lcom/google/common/math/DoubleMath;->roundToBigInteger(DLjava/math/RoundingMode;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static sqrtFloor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    .line 285
    sget-object v0, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {p0, v0}, Lcom/google/common/math/BigIntegerMath;->log2(Ljava/math/BigInteger;Ljava/math/RoundingMode;)I

    move-result v0

    const/16 v1, 0x3ff

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 287
    invoke-static {p0}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x34

    and-int/lit8 v0, v0, -0x2

    .line 294
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/math/BigIntegerMath;->sqrtApproxWithDoubles(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    shr-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 296
    :goto_0
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    .line 302
    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-ltz v3, :cond_2

    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method
