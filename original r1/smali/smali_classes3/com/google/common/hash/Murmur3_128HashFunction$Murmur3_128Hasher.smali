.class final Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;
.super Lcom/google/common/hash/AbstractStreamingHasher;
.source "Murmur3_128HashFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Murmur3_128HashFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Murmur3_128Hasher"
.end annotation


# static fields
.field private static final C1:J = -0x783c846eeebdac2bL

.field private static final C2:J = 0x4cf5ad432745937fL

.field private static final CHUNK_SIZE:I = 0x10


# instance fields
.field private h1:J

.field private h2:J

.field private length:I


# direct methods
.method constructor <init>(I)V
    .locals 2

    const/16 v0, 0x10

    .line 96
    invoke-direct {p0, v0}, Lcom/google/common/hash/AbstractStreamingHasher;-><init>(I)V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    return-void
.end method

.method private bmix64(JJ)V
    .locals 6

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 111
    invoke-static {p1, p2}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    const/16 v0, 0x1b

    .line 113
    invoke-static {p1, p2, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    add-long/2addr p1, v0

    const-wide/16 v2, 0x5

    mul-long/2addr p1, v2

    const-wide/32 v4, 0x52dce729

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 117
    invoke-static {p3, p4}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    move-result-wide p1

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/16 p3, 0x1f

    .line 119
    invoke-static {p1, p2, p3}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr p1, p3

    mul-long/2addr p1, v2

    const-wide/32 p3, 0x38495ab5

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    return-void
.end method

.method private static fmix64(J)J
    .locals 3

    const/16 v0, 0x21

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0xae502812aa7333L

    mul-long/2addr p0, v1

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    const-wide v1, -0x3b314601e57a13adL    # -2.902039044684214E23

    mul-long/2addr p0, v1

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixK1(J)J
    .locals 2

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr p0, v0

    const/16 v0, 0x1f

    .line 202
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private static mixK2(J)J
    .locals 2

    const-wide v0, 0x4cf5ad432745937fL    # 5.573325460219186E62

    mul-long/2addr p0, v0

    const/16 v0, 0x21

    .line 209
    invoke-static {p0, p1, v0}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide p0

    const-wide v0, -0x783c846eeebdac2bL

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method protected makeHash()Lcom/google/common/hash/HashCode;
    .locals 7

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    int-to-long v3, v2

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    int-to-long v5, v2

    xor-long v2, v3, v5

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 177
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 178
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->fmix64(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 184
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 185
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 186
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 187
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 183
    invoke-static {p0}, Lcom/google/common/hash/HashCode;->fromBytesNoCopy([B)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method protected process(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 104
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 106
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->bmix64(JJ)V

    iget p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    add-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    return-void
.end method

.method protected processRemaining(Ljava/nio/ByteBuffer;)V
    .locals 11

    iget v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->length:I

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x30

    const/16 v2, 0x28

    const/16 v3, 0x20

    const/16 v4, 0x18

    const/16 v5, 0x10

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    packed-switch v0, :pswitch_data_0

    .line 163
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Should never get here."

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    const/16 v0, 0xe

    .line 131
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v1

    :pswitch_1
    const/16 v0, 0xd

    .line 133
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v2

    xor-long/2addr v7, v0

    :pswitch_2
    const/16 v0, 0xc

    .line 135
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v3

    xor-long/2addr v7, v0

    :pswitch_3
    const/16 v0, 0xb

    .line 137
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v4

    xor-long/2addr v7, v0

    :pswitch_4
    const/16 v0, 0xa

    .line 139
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v5

    xor-long/2addr v7, v0

    :pswitch_5
    const/16 v0, 0x9

    .line 141
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr v0, v6

    xor-long/2addr v7, v0

    .line 143
    :pswitch_6
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v0, v0

    xor-long/2addr v7, v0

    .line 145
    :pswitch_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    goto :goto_6

    :pswitch_8
    const/4 v0, 0x6

    .line 148
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    int-to-long v9, v0

    shl-long v0, v9, v1

    goto :goto_0

    :pswitch_9
    move-wide v0, v7

    :goto_0
    const/4 v9, 0x5

    .line 150
    invoke-virtual {p1, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    invoke-static {v9}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v9

    int-to-long v9, v9

    shl-long/2addr v9, v2

    xor-long/2addr v0, v9

    goto :goto_1

    :pswitch_a
    move-wide v0, v7

    :goto_1
    const/4 v2, 0x4

    .line 152
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v9, v2

    shl-long v2, v9, v3

    xor-long/2addr v0, v2

    goto :goto_2

    :pswitch_b
    move-wide v0, v7

    :goto_2
    const/4 v2, 0x3

    .line 154
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    goto :goto_3

    :pswitch_c
    move-wide v0, v7

    :goto_3
    const/4 v2, 0x2

    .line 156
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    goto :goto_4

    :pswitch_d
    move-wide v0, v7

    :goto_4
    const/4 v2, 0x1

    .line 158
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    invoke-static {v2}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v2

    int-to-long v2, v2

    shl-long/2addr v2, v6

    xor-long/2addr v0, v2

    goto :goto_5

    :pswitch_e
    move-wide v0, v7

    :goto_5
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1

    invoke-static {p1}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result p1

    int-to-long v2, p1

    xor-long/2addr v0, v2

    :goto_6
    iget-wide v2, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    .line 165
    invoke-static {v0, v1}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK1(J)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h1:J

    iget-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    .line 166
    invoke-static {v7, v8}, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->mixK2(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/common/hash/Murmur3_128HashFunction$Murmur3_128Hasher;->h2:J

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
