.class public Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;
.super Ljava/lang/Object;
.source "ArrayReadWriteBuf.java"

# interfaces
.implements Landroidx/emoji2/text/flatbuffer/ReadWriteBuf;


# instance fields
.field private buffer:[B

.field private writePos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 20
    invoke-direct {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;-><init>([B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    const/4 p1, 0x0

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    iput p2, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method


# virtual methods
.method public data()[B
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    return-object p0
.end method

.method public get(I)B
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 44
    aget-byte p0, p0, p1

    return p0
.end method

.method public getBoolean(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 39
    aget-byte p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getDouble(I)D
    .locals 0

    .line 79
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getLong(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(I)F
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->getInt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public getInt(I)I
    .locals 2

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v0, p1, 0x3

    .line 54
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public getLong(I)J
    .locals 8

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v0, p1, 0x1

    .line 62
    aget-byte v1, p0, p1

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    add-int/lit8 v5, p1, 0x2

    aget-byte v0, p0, v0

    int-to-long v6, v0

    and-long/2addr v6, v3

    const/16 v0, 0x8

    shl-long/2addr v6, v0

    or-long v0, v1, v6

    add-int/lit8 v2, p1, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    add-int/lit8 v5, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v6, v2

    and-long/2addr v6, v3

    const/16 v2, 0x18

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    add-int/lit8 v2, p1, 0x5

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    add-int/lit8 v5, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v6, v2

    and-long/2addr v6, v3

    const/16 v2, 0x28

    shl-long/2addr v6, v2

    or-long/2addr v0, v6

    add-int/lit8 p1, p1, 0x7

    aget-byte v2, p0, v5

    int-to-long v5, v2

    and-long v2, v5, v3

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    aget-byte p0, p0, p1

    int-to-long p0, p0

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public getShort(I)S
    .locals 1

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v0, p1, 0x1

    .line 49
    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x8

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 84
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/Utf8Safe;->decodeUtf8Array([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public limit()I
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return p0
.end method

.method public put(B)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 107
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(IB)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public put([BII)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 101
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(I[BII)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public putBoolean(Z)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 95
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setBoolean(IZ)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public putDouble(D)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 137
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setDouble(ID)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public putFloat(F)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 131
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setFloat(IF)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public putInt(I)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 119
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setInt(II)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public putLong(J)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 125
    invoke-virtual {p0, v0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setLong(IJ)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public putShort(S)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    .line 113
    invoke-virtual {p0, v0, p1}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->setShort(IS)V

    iget p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    add-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return-void
.end method

.method public requestCapacity(I)Z
    .locals 3

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 232
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, p1, :cond_0

    return v2

    .line 236
    :cond_0
    array-length p1, v0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr p1, v1

    .line 238
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    return v2
.end method

.method public set(IB)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 148
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 149
    aput-byte p2, p0, p1

    return-void
.end method

.method public set(I[BII)V
    .locals 1

    sub-int v0, p4, p3

    add-int/2addr v0, p1

    .line 154
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    .line 155
    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public setBoolean(IZ)V
    .locals 0

    .line 143
    invoke-virtual {p0, p1, p2}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->set(IB)V

    return-void
.end method

.method public setDouble(ID)V
    .locals 4

    add-int/lit8 v0, p1, 0x8

    .line 205
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 207
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    long-to-int v0, p2

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    .line 209
    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 210
    aput-byte v3, p0, v1

    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 211
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x4

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 212
    aput-byte v0, p0, v1

    const/16 v0, 0x20

    shr-long/2addr p2, v0

    long-to-int p2, p2

    add-int/lit8 p3, p1, 0x5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    .line 214
    aput-byte v0, p0, v2

    add-int/lit8 v0, p1, 0x6

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 215
    aput-byte v1, p0, p3

    add-int/lit8 p1, p1, 0x7

    shr-int/lit8 p3, p2, 0x10

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 216
    aput-byte p3, p0, v0

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 217
    aput-byte p2, p0, p1

    return-void
.end method

.method public setFloat(IF)V
    .locals 3

    add-int/lit8 v0, p1, 0x4

    .line 194
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    .line 196
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    .line 197
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 198
    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 199
    aput-byte v0, p0, v1

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 200
    aput-byte p2, p0, p1

    return-void
.end method

.method public setInt(II)V
    .locals 3

    add-int/lit8 v0, p1, 0x4

    .line 168
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    .line 170
    aput-byte v1, p0, p1

    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    .line 171
    aput-byte v2, p0, v0

    add-int/lit8 p1, p1, 0x3

    shr-int/lit8 v0, p2, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 172
    aput-byte v0, p0, v1

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 173
    aput-byte p2, p0, p1

    return-void
.end method

.method public setLong(IJ)V
    .locals 4

    add-int/lit8 v0, p1, 0x8

    .line 178
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    long-to-int v0, p2

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v1, p1, 0x1

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    .line 181
    aput-byte v2, p0, p1

    add-int/lit8 v2, p1, 0x2

    shr-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 182
    aput-byte v3, p0, v1

    add-int/lit8 v1, p1, 0x3

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 183
    aput-byte v3, p0, v2

    add-int/lit8 v2, p1, 0x4

    shr-int/lit8 v0, v0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    .line 184
    aput-byte v0, p0, v1

    const/16 v0, 0x20

    shr-long/2addr p2, v0

    long-to-int p2, p2

    add-int/lit8 p3, p1, 0x5

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    .line 186
    aput-byte v0, p0, v2

    add-int/lit8 v0, p1, 0x6

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 187
    aput-byte v1, p0, p3

    add-int/lit8 p1, p1, 0x7

    shr-int/lit8 p3, p2, 0x10

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 188
    aput-byte p3, p0, v0

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 189
    aput-byte p2, p0, p1

    return-void
.end method

.method public setShort(IS)V
    .locals 2

    add-int/lit8 v0, p1, 0x2

    .line 160
    invoke-virtual {p0, v0}, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->requestCapacity(I)Z

    iget-object p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->buffer:[B

    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    .line 162
    aput-byte v1, p0, p1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 163
    aput-byte p1, p0, v0

    return-void
.end method

.method public writePosition()I
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/flatbuffer/ArrayReadWriteBuf;->writePos:I

    return p0
.end method
