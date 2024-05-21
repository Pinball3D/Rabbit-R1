.class public final Landroidx/media3/extractor/ts/TsUtil;
.super Ljava/lang/Object;
.source "TsUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSyncBytePosition([BII)I
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 64
    aget-byte v0, p0, p1

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public static isStartOfTsPacket([BIII)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x4

    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-gt v1, v3, :cond_3

    mul-int/lit16 v3, v1, 0xbc

    add-int/2addr v3, p3

    if-lt v3, p1, :cond_1

    if-ge v3, p2, :cond_1

    .line 47
    aget-byte v3, p0, v3

    const/16 v4, 0x47

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x5

    if-ne v2, v4, :cond_2

    return v3

    :cond_1
    :goto_1
    move v2, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public static readPcrFromPacket(Landroidx/media3/common/util/ParsableByteArray;II)J
    .locals 3

    .line 81
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 82
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x5

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-ge p1, v0, :cond_0

    return-wide v1

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    const/high16 v0, 0x800000

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    return-wide v1

    :cond_1
    const v0, 0x1fff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    if-eq v0, p2, :cond_2

    return-wide v1

    :cond_2
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/4 p2, 0x7

    if-lt p1, p2, :cond_3

    .line 102
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-lt p1, p2, :cond_3

    .line 103
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    const/16 p2, 0x10

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_3

    const/4 p1, 0x6

    new-array p2, p1, [B

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, p2, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 108
    invoke-static {p2}, Landroidx/media3/extractor/ts/TsUtil;->readPcrValueFromPcrBytes([B)J

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v1
.end method

.method private static readPcrValueFromPcrBytes([B)J
    .locals 8

    const/4 v0, 0x0

    .line 120
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x19

    shl-long/2addr v0, v4

    const/4 v4, 0x1

    aget-byte v5, p0, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x11

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x2

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    const/16 v7, 0x9

    shl-long/2addr v5, v7

    or-long/2addr v0, v5

    const/4 v5, 0x3

    aget-byte v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v2

    shl-long v4, v5, v4

    or-long/2addr v0, v4

    const/4 v4, 0x4

    aget-byte p0, p0, v4

    int-to-long v4, p0

    and-long/2addr v2, v4

    const/4 p0, 0x7

    shr-long/2addr v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method
