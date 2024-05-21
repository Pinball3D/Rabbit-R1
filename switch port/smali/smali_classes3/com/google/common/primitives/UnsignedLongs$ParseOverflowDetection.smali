.class final Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/UnsignedLongs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ParseOverflowDetection"
.end annotation


# static fields
.field static final maxSafeDigits:[I

.field static final maxValueDivs:[J

.field static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x25

    new-array v1, v0, [J

    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    new-array v1, v0, [I

    sput-object v1, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    .line 406
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "10000000000000000"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x2

    :goto_0
    const/16 v2, 0x24

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    int-to-long v3, v1

    const-wide/16 v5, -0x1

    .line 408
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v7

    aput-wide v7, v2, v1

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 409
    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v1

    sget-object v2, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxSafeDigits:[I

    .line 410
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static overflowInParse(JII)Z
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_3

    sget-object v0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueDivs:[J

    .line 422
    aget-wide v2, v0, p3

    cmp-long v0, p0, v2

    const/4 v4, 0x0

    if-gez v0, :cond_0

    return v4

    :cond_0
    cmp-long p0, p0, v2

    if-lez p0, :cond_1

    return v1

    :cond_1
    sget-object p0, Lcom/google/common/primitives/UnsignedLongs$ParseOverflowDetection;->maxValueMods:[I

    .line 429
    aget p0, p0, p3

    if-le p2, p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    :cond_3
    :goto_0
    return v1
.end method
