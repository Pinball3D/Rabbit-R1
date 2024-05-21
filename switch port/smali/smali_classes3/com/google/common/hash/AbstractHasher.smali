.class abstract Lcom/google/common/hash/AbstractHasher;
.super Ljava/lang/Object;
.source "AbstractHasher.java"

# interfaces
.implements Lcom/google/common/hash/Hasher;


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final putBoolean(Z)Lcom/google/common/hash/Hasher;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBoolean(Z)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBoolean(Z)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;
    .locals 3

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/common/hash/AbstractHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/hash/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public putBytes([B)Lcom/google/common/hash/Hasher;
    .locals 2

    const/4 v0, 0x0

    .line 62
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/hash/AbstractHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putBytes([BII)Lcom/google/common/hash/Hasher;
    .locals 2

    add-int v0, p2, p3

    .line 67
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    .line 69
    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBytes(Ljava/nio/ByteBuffer;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBytes([B)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putBytes([BII)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/hash/AbstractHasher;->putBytes([BII)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putChar(C)Lcom/google/common/hash/Hasher;
    .locals 1

    int-to-byte v0, p1

    .line 113
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 114
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    return-object p0
.end method

.method public bridge synthetic putChar(C)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public final putDouble(D)Lcom/google/common/hash/Hasher;
    .locals 0

    .line 39
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putDouble(D)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putDouble(D)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public final putFloat(F)Lcom/google/common/hash/Hasher;
    .locals 0

    .line 44
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putFloat(F)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putFloat(F)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putInt(I)Lcom/google/common/hash/Hasher;
    .locals 1

    int-to-byte v0, p1

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 97
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 98
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    return-object p0
.end method

.method public bridge synthetic putInt(I)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putLong(J)Lcom/google/common/hash/Hasher;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    ushr-long v1, p1, v0

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 106
    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putLong(J)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/hash/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel<",
            "-TT;>;)",
            "Lcom/google/common/hash/Hasher;"
        }
    .end annotation

    .line 121
    invoke-interface {p2, p1, p0}, Lcom/google/common/hash/Funnel;->funnel(Ljava/lang/Object;Lcom/google/common/hash/PrimitiveSink;)V

    return-object p0
.end method

.method public putShort(S)Lcom/google/common/hash/Hasher;
    .locals 1

    int-to-byte v0, p1

    .line 89
    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    ushr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putByte(B)Lcom/google/common/hash/Hasher;

    return-object p0
.end method

.method public bridge synthetic putShort(S)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putShort(S)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;
    .locals 0

    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putBytes([B)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/AbstractHasher;->putString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method

.method public putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;
    .locals 3

    .line 49
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 50
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/hash/AbstractHasher;->putChar(C)Lcom/google/common/hash/Hasher;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/PrimitiveSink;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractHasher;->putUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/Hasher;

    move-result-object p0

    return-object p0
.end method
