.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConcatenatedHashFunction"
.end annotation


# direct methods
.method private varargs constructor <init>([Lcom/google/common/hash/HashFunction;)V
    .locals 6

    .line 675
    invoke-direct {p0, p1}, Lcom/google/common/hash/AbstractCompositeHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    .line 676
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 678
    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v3

    rem-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    const-string v4, "the number of bits (%s) in hashFunction (%s) must be divisible by 8"

    .line 680
    invoke-interface {v2}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v5

    .line 677
    invoke-static {v3, v4, v5, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method synthetic constructor <init>([Lcom/google/common/hash/HashFunction;Lcom/google/common/hash/Hashing$1;)V
    .locals 0

    .line 672
    invoke-direct {p0, p1}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;-><init>([Lcom/google/common/hash/HashFunction;)V

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 4

    .line 699
    iget-object p0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 700
    invoke-interface {v3}, Lcom/google/common/hash/HashFunction;->bits()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 707
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    if-eqz v0, :cond_0

    .line 708
    check-cast p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 709
    iget-object p0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    iget-object p1, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method makeHash([Lcom/google/common/hash/Hasher;)Lcom/google/common/hash/HashCode;
    .locals 5

    .line 687
    invoke-virtual {p0}, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    new-array p0, p0, [B

    .line 689
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p1, v1

    .line 690
    invoke-interface {v3}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v3

    .line 691
    invoke-virtual {v3}, Lcom/google/common/hash/HashCode;->bits()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, p0, v2, v4}, Lcom/google/common/hash/HashCode;->writeBytesTo([BII)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 693
    :cond_0
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method
