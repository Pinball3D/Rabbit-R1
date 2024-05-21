.class public final Lcom/google/common/math/IntMath;
.super Ljava/lang/Object;
.source "IntMath.java"


# annotations
.annotation runtime Lcom/google/common/math/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FLOOR_SQRT_MAX_INT:I = 0xb504

.field static final MAX_POWER_OF_SQRT2_UNSIGNED:I = -0x4afb0ccd

.field static final MAX_SIGNED_POWER_OF_TWO:I = 0x40000000

.field static biggestBinomials:[I

.field private static final factorials:[I

.field static final halfPowersOf10:[I

.field static final maxLog10ForLeadingZeros:[B

.field static final powersOf10:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    return-void

    :array_0
    .array-data 1
        0x9t
        0x9t
        0x9t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x7t
        0x6t
        0x6t
        0x6t
        0x6t
        0x5t
        0x5t
        0x5t
        0x4t
        0x4t
        0x4t
        0x3t
        0x3t
        0x3t
        0x3t
        0x2t
        0x2t
        0x2t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x1
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x1f
        0x13c
        0xc5a
        0x7b86
        0x4d343
        0x3040a5
        0x1e28678
        0x12d940b6
        0x7fffffff
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
    .end array-data

    :array_4
    .array-data 4
        0x7fffffff
        0x7fffffff
        0x10000
        0x929
        0x1dd
        0xc1
        0x6e
        0x4b
        0x3a
        0x31
        0x2b
        0x27
        0x25
        0x23
        0x22
        0x22
        0x21
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomial(II)I
    .locals 5

    const-string v0, "n"

    .line 651
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "k"

    .line 652
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "k (%s) > n (%s)"

    .line 653
    invoke-static {v2, v3, p1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    shr-int/lit8 v2, p0, 0x1

    if-le p1, v2, :cond_1

    sub-int p1, p0, p1

    :cond_1
    sget-object v2, Lcom/google/common/math/IntMath;->biggestBinomials:[I

    .line 657
    array-length v3, v2

    if-ge p1, v3, :cond_6

    aget v2, v2, p1

    if-le p0, v2, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    const-wide/16 v1, 0x1

    :goto_1
    if-ge v0, p1, :cond_3

    sub-int v3, p0, v0

    int-to-long v3, v3

    mul-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 669
    div-long/2addr v1, v3

    goto :goto_1

    :cond_3
    long-to-int p0, v1

    :cond_4
    return p0

    :cond_5
    return v1

    :cond_6
    :goto_2
    const p0, 0x7fffffff

    return p0
.end method

.method public static ceilingPowerOfTwo(I)I
    .locals 3

    const-string v0, "x"

    .line 68
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    .line 72
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    neg-int p0, p0

    shl-int p0, v0, p0

    return p0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "ceilingPowerOfTwo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") not representable as an int"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkedAdd(II)I
    .locals 5

    int-to-long v0, p0

    int-to-long v2, p1

    add-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedAdd"

    .line 457
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    return v2
.end method

.method public static checkedMultiply(II)I
    .locals 5

    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedMultiply"

    .line 479
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    return v2
.end method

.method public static checkedPow(II)I
    .locals 6

    const-string v0, "exponent"

    .line 492
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x2

    const-string v1, "checkedPow"

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p0, v0, :cond_d

    if-eq p0, v2, :cond_b

    if-eqz p0, :cond_9

    if-eq p0, v4, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    move v0, v4

    :cond_0
    :goto_0
    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 518
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result v0

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_0

    const v2, -0xb504

    if-gt v2, p0, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    const v5, 0xb504

    if-gt p0, v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    .line 522
    invoke-static {v2, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    mul-int/2addr p0, p0

    goto :goto_0

    .line 515
    :cond_4
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->checkedMultiply(II)I

    move-result p0

    return p0

    :cond_5
    return v0

    :cond_6
    const/16 v0, 0x1f

    if-ge p1, v0, :cond_7

    move v3, v4

    .line 501
    :cond_7
    invoke-static {v3, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    shl-int p0, v4, p1

    return p0

    :cond_8
    return v4

    :cond_9
    if-nez p1, :cond_a

    move v3, v4

    :cond_a
    return v3

    :cond_b
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_c

    move v2, v4

    :cond_c
    return v2

    :cond_d
    const/16 v0, 0x20

    if-ge p1, v0, :cond_e

    move v3, v4

    .line 504
    :cond_e
    invoke-static {v3, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_f

    shl-int p0, v4, p1

    goto :goto_3

    :cond_f
    shl-int p0, v2, p1

    :goto_3
    return p0
.end method

.method public static checkedSubtract(II)I
    .locals 5

    int-to-long v0, p0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "checkedSubtract"

    .line 468
    invoke-static {v0, v1, p0, p1}, Lcom/google/common/math/MathPreconditions;->checkNoOverflow(ZLjava/lang/String;II)V

    return v2
.end method

.method public static divide(IILjava/math/RoundingMode;)I
    .locals 5

    .line 318
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_7

    .line 322
    div-int v0, p0, p1

    mul-int v1, p1, v0

    sub-int v1, p0, v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    const/4 v2, 0x1

    or-int/2addr p0, v2

    .line 338
    sget-object v3, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 368
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 357
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 358
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p1, v1

    sub-int/2addr v1, p1

    if-nez v1, :cond_3

    .line 362
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p2, p1, :cond_4

    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p2, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    and-int/lit8 p2, v0, 0x1

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    and-int/2addr p1, v2

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_3
    if-lez v1, :cond_6

    goto :goto_2

    :pswitch_1
    if-lez p0, :cond_6

    goto :goto_2

    :pswitch_2
    if-gez p0, :cond_6

    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v0, p0

    goto :goto_4

    :pswitch_4
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v4

    .line 340
    :goto_3
    invoke-static {v2}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :cond_6
    :goto_4
    :pswitch_5
    return v0

    .line 320
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "/ by zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static factorial(I)I
    .locals 2

    const-string v0, "n"

    .line 624
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    sget-object v0, Lcom/google/common/math/IntMath;->factorials:[I

    .line 625
    array-length v1, v0

    if-ge p0, v1, :cond_0

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    :goto_0
    return p0
.end method

.method public static floorPowerOfTwo(I)I
    .locals 1

    const-string v0, "x"

    .line 84
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 85
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method public static gcd(II)I
    .locals 3

    const-string v0, "a"

    .line 411
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const-string v0, "b"

    .line 412
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    if-nez p0, :cond_0

    return p1

    :cond_0
    if-nez p1, :cond_1

    return p0

    .line 424
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    shr-int/2addr p0, v0

    .line 426
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    shr-int/2addr p1, v1

    :goto_0
    if-eq p0, p1, :cond_2

    sub-int/2addr p0, p1

    shr-int/lit8 v2, p0, 0x1f

    and-int/2addr v2, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v2

    add-int/2addr p1, v2

    .line 445
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shr-int/2addr p0, v2

    goto :goto_0

    .line 447
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    shl-int/2addr p0, p1

    return p0
.end method

.method public static isPowerOfTwo(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    add-int/lit8 v3, p0, -0x1

    and-int/2addr p0, v3

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    and-int p0, v2, v0

    return p0
.end method

.method public static isPrime(I)Z
    .locals 2

    int-to-long v0, p0

    .line 725
    invoke-static {v0, v1}, Lcom/google/common/math/LongMath;->isPrime(J)Z

    move-result p0

    return p0
.end method

.method static lessThanBranchFree(II)I
    .locals 0

    sub-int/2addr p0, p1

    not-int p0, p0

    not-int p0, p0

    ushr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static log10(ILjava/math/RoundingMode;)I
    .locals 3

    const-string v0, "x"

    .line 161
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 162
    invoke-static {p0}, Lcom/google/common/math/IntMath;->log10Floor(I)I

    move-result v0

    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 163
    aget v1, v1, v0

    .line 164
    sget-object v2, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    .line 180
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    sget-object p1, Lcom/google/common/math/IntMath;->halfPowersOf10:[I

    .line 178
    aget p1, p1, v0

    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    .line 173
    :pswitch_1
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    goto :goto_0

    :pswitch_2
    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 166
    :goto_1
    invoke-static {p0}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    :pswitch_3
    return v0

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

.method private static log10Floor(I)I
    .locals 2

    sget-object v0, Lcom/google/common/math/IntMath;->maxLog10ForLeadingZeros:[B

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    aget-byte v0, v0, v1

    sget-object v1, Lcom/google/common/math/IntMath;->powersOf10:[I

    .line 197
    aget v1, v1, v0

    invoke-static {p0, v1}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static log2(ILjava/math/RoundingMode;)I
    .locals 1

    const-string v0, "x"

    .line 120
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkPositive(Ljava/lang/String;I)I

    .line 121
    sget-object v0, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 144
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 137
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    const v0, -0x4afb0ccd

    ushr-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x1f

    .line 141
    invoke-static {v0, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :pswitch_1
    add-int/lit8 p0, p0, -0x1

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x20

    return p0

    .line 123
    :pswitch_2
    invoke-static {p0}, Lcom/google/common/math/IntMath;->isPowerOfTwo(I)Z

    move-result p1

    invoke-static {p1}, Lcom/google/common/math/MathPreconditions;->checkRoundingUnnecessary(Z)V

    .line 127
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x1f

    return p0

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

.method public static mean(II)I
    .locals 1

    and-int v0, p0, p1

    xor-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1

    add-int/2addr v0, p0

    return v0
.end method

.method public static mod(II)I
    .locals 2

    if-lez p1, :cond_1

    .line 395
    rem-int/2addr p0, p1

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p0, p1

    :goto_0
    return p0

    .line 393
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Modulus "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be > 0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pow(II)I
    .locals 4

    const-string v0, "exponent"

    .line 229
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x2

    const/16 v1, 0x20

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p0, v0, :cond_a

    const/4 v0, -0x1

    if-eq p0, v0, :cond_8

    if-eqz p0, :cond_6

    if-eq p0, v3, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    move v0, v3

    :goto_0
    if-eqz p1, :cond_2

    if-eq p1, v3, :cond_1

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, p0

    :goto_1
    mul-int/2addr v0, v1

    mul-int/2addr p0, p0

    shr-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    mul-int/2addr p0, v0

    return p0

    :cond_2
    return v0

    :cond_3
    if-ge p1, v1, :cond_4

    shl-int v2, v3, p1

    :cond_4
    return v2

    :cond_5
    return v3

    :cond_6
    if-nez p1, :cond_7

    move v2, v3

    :cond_7
    return v2

    :cond_8
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_9

    goto :goto_2

    :cond_9
    move v3, v0

    :goto_2
    return v3

    :cond_a
    if-ge p1, v1, :cond_c

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_b

    shl-int p0, v3, p1

    goto :goto_3

    :cond_b
    shl-int p0, v3, p1

    neg-int p0, p0

    :goto_3
    return p0

    :cond_c
    return v2
.end method

.method public static saturatedAdd(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    .line 537
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static saturatedMultiply(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long/2addr v0, p0

    .line 559
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static saturatedPow(II)I
    .locals 6

    const-string v0, "exponent"

    .line 570
    invoke-static {v0, p1}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    const/4 v0, -0x2

    const v1, 0x7fffffff

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p0, v0, :cond_e

    if-eq p0, v2, :cond_c

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    if-eq p0, v3, :cond_9

    const/4 v2, 0x2

    if-eq p0, v2, :cond_7

    ushr-int/lit8 v2, p0, 0x1f

    and-int/lit8 v4, p1, 0x1

    and-int/2addr v2, v4

    add-int/2addr v2, v1

    move v1, v3

    :cond_0
    :goto_0
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_1

    .line 602
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result v1

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_0

    const v4, -0xb504

    if-le v4, p0, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    const v5, 0xb504

    if-le p0, v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    or-int/2addr v4, v5

    if-eqz v4, :cond_4

    return v2

    :cond_4
    mul-int/2addr p0, p0

    goto :goto_0

    .line 599
    :cond_5
    invoke-static {v1, p0}, Lcom/google/common/math/IntMath;->saturatedMultiply(II)I

    move-result p0

    return p0

    :cond_6
    return v1

    :cond_7
    const/16 p0, 0x1f

    if-lt p1, p0, :cond_8

    return v1

    :cond_8
    shl-int p0, v3, p1

    return p0

    :cond_9
    return v3

    :cond_a
    if-nez p1, :cond_b

    goto :goto_3

    :cond_b
    move v3, v0

    :goto_3
    return v3

    :cond_c
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_d

    move v2, v3

    :cond_d
    return v2

    :cond_e
    const/16 p0, 0x20

    if-lt p1, p0, :cond_f

    and-int/lit8 p0, p1, 0x1

    add-int/2addr p0, v1

    return p0

    :cond_f
    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_10

    shl-int p0, v3, p1

    goto :goto_4

    :cond_10
    shl-int p0, v2, p1

    :goto_4
    return p0
.end method

.method public static saturatedSubtract(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    .line 548
    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method public static sqrt(ILjava/math/RoundingMode;)I
    .locals 2

    const-string v0, "x"

    .line 271
    invoke-static {v0, p0}, Lcom/google/common/math/MathPreconditions;->checkNonNegative(Ljava/lang/String;I)I

    .line 272
    invoke-static {p0}, Lcom/google/common/math/IntMath;->sqrtFloor(I)I

    move-result v0

    .line 273
    sget-object v1, Lcom/google/common/math/IntMath$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p1}, Ljava/math/RoundingMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    .line 299
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    mul-int p1, v0, v0

    add-int/2addr p1, v0

    .line 297
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    :pswitch_1
    mul-int p1, v0, v0

    .line 281
    invoke-static {p1, p0}, Lcom/google/common/math/IntMath;->lessThanBranchFree(II)I

    move-result p0

    goto :goto_0

    :pswitch_2
    mul-int p1, v0, v0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 275
    :goto_1
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

.method private static sqrtFloor(I)I
    .locals 2

    int-to-double v0, p0

    .line 306
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method
