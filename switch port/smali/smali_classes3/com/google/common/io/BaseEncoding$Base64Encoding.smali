.class final Lcom/google/common/io/BaseEncoding$Base64Encoding;
.super Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;
.source "BaseEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/BaseEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Base64Encoding"
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V
    .locals 0
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 943
    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    .line 944
    invoke-static {p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->access$000(Lcom/google/common/io/BaseEncoding$Alphabet;)[C

    move-result-object p0

    array-length p0, p0

    const/16 p1, 0x40

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p3    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 939
    new-instance v0, Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/common/io/BaseEncoding$Alphabet;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method decodeTo([BLjava/lang/CharSequence;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .line 966
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual {p0, p2}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->trimTrailingPadding(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 968
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->isValidPaddingStartPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 972
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 973
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x12

    .line 974
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v5, v0, 0x2

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    .line 975
    aput-byte v4, p1, v1

    .line 976
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v5, v4, :cond_1

    .line 977
    iget-object v4, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v6, v0, 0x3

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v2, v4

    add-int/lit8 v4, v1, 0x2

    ushr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 978
    aput-byte v5, p1, v3

    .line 979
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 980
    iget-object v3, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    add-int/lit8 v0, v0, 0x4

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/common/io/BaseEncoding$Alphabet;->decode(C)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 981
    aput-byte v2, p1, v4

    goto :goto_0

    :cond_0
    move v1, v4

    move v0, v6

    goto :goto_0

    :cond_1
    move v1, v3

    move v0, v5

    goto :goto_0

    :cond_2
    return v1

    .line 969
    :cond_3
    new-instance p0, Lcom/google/common/io/BaseEncoding$DecodingException;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid input length "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/io/BaseEncoding$DecodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method encodeTo(Ljava/lang/Appendable;[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 949
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int v0, p3, p4

    .line 950
    array-length v1, p2

    invoke-static {p3, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    :goto_0
    const/4 v1, 0x3

    if-lt p4, v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    .line 953
    aget-byte v2, p2, p3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/lit8 v3, p3, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v2

    add-int/lit8 p3, p3, 0x3

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 954
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v3, v1, 0x12

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 955
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 956
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v2, v3}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 957
    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    and-int/lit8 v1, v1, 0x3f

    invoke-virtual {v2, v1}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p4, p4, -0x3

    goto :goto_0

    :cond_0
    if-ge p3, v0, :cond_1

    sub-int/2addr v0, p3

    .line 960
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/common/io/BaseEncoding$Base64Encoding;->encodeChunkTo(Ljava/lang/Appendable;[BII)V

    :cond_1
    return-void
.end method

.method newInstance(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)Lcom/google/common/io/BaseEncoding;
    .locals 0
    .param p2    # Ljava/lang/Character;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 990
    new-instance p0, Lcom/google/common/io/BaseEncoding$Base64Encoding;

    invoke-direct {p0, p1, p2}, Lcom/google/common/io/BaseEncoding$Base64Encoding;-><init>(Lcom/google/common/io/BaseEncoding$Alphabet;Ljava/lang/Character;)V

    return-object p0
.end method
