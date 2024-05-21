.class public final Landroidx/media3/common/util/CodecSpecificDataUtil;
.super Ljava/lang/Object;
.source "CodecSpecificDataUtil.java"


# static fields
.field private static final EXTENDED_PAR:I = 0xf

.field private static final HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

.field private static final NAL_START_CODE:[B

.field private static final RECTANGULAR:I = 0x0

.field private static final VISUAL_OBJECT_LAYER:I = 0x1

.field private static final VISUAL_OBJECT_LAYER_START:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    const-string v0, "B"

    const-string v1, "C"

    const-string v2, ""

    const-string v3, "A"

    .line 33
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAvcCodecString(III)Ljava/lang/String;
    .locals 0

    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "avc1.%02X%02X%02X"

    .line 175
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildCea708InitializationData(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    new-array p0, v1, [B

    aput-byte v1, p0, v0

    goto :goto_0

    :cond_0
    new-array p0, v1, [B

    aput-byte v0, p0, v0

    .line 66
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static buildHevcCodecString(IZII[II)Ljava/lang/String;
    .locals 3

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroidx/media3/common/util/CodecSpecificDataUtil;->HEVC_GENERAL_PROFILE_SPACE_STRINGS:[Ljava/lang/String;

    aget-object p0, v2, p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    .line 192
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    const/4 p0, 0x2

    .line 193
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p0

    if-eqz p1, :cond_0

    const/16 p0, 0x48

    goto :goto_0

    :cond_0
    const/16 p0, 0x4c

    .line 194
    :goto_0
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v1, p1

    const/4 p0, 0x4

    .line 195
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "hvc1.%s%d.%X.%c%d"

    .line 189
    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    array-length p0, p4

    :goto_1
    if-lez p0, :cond_1

    add-int/lit8 p1, p0, -0x1

    .line 198
    aget p1, p4, p1

    if-nez p1, :cond_1

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v2, p0, :cond_2

    .line 202
    aget p1, p4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, ".%02X"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 204
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildNalUnit([BII)[B
    .locals 4

    sget-object v0, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 216
    array-length v1, v0

    add-int/2addr v1, p2

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 217
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    array-length v0, v0

    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method private static findNalStartCode([BI)I
    .locals 2

    .line 264
    array-length v0, p0

    sget-object v1, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    :goto_0
    if-gt p1, v0, :cond_1

    .line 266
    invoke-static {p0, p1}, Landroidx/media3/common/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getVideoResolutionFromMpeg4VideoConfig([B)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, v2, 0x3

    .line 95
    array-length v4, p0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v3, v4, :cond_2

    .line 96
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v4

    if-ne v4, v6, :cond_1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xf0

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    move v0, v6

    goto :goto_2

    .line 98
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    const-string v3, "Invalid input: VOL not found."

    .line 106
    invoke-static {v0, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 108
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x4

    add-int/2addr v2, p0

    const/16 v3, 0x8

    mul-int/2addr v2, v3

    .line 110
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 111
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 112
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 114
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v2, 0x3

    .line 116
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 119
    :cond_3
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    const/16 v2, 0xf

    if-ne p0, v2, :cond_4

    .line 121
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 122
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 125
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 126
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 127
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 128
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x4f

    .line 129
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 133
    :cond_5
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-nez p0, :cond_6

    move p0, v6

    goto :goto_3

    :cond_6
    move p0, v1

    :goto_3
    const-string v2, "Only supports rectangular video object layer shape."

    .line 134
    invoke-static {p0, v2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 138
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/16 p0, 0x10

    .line 139
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    .line 140
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 142
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_9

    if-lez p0, :cond_7

    move v2, v6

    goto :goto_4

    :cond_7
    move v2, v1

    .line 143
    :goto_4
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    add-int/lit8 p0, p0, -0x1

    :goto_5
    if-lez p0, :cond_8

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p0, p0, 0x1

    goto :goto_5

    .line 150
    :cond_8
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 153
    :cond_9
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/16 p0, 0xd

    .line 154
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 155
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 156
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    .line 157
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 159
    invoke-virtual {v0, v6}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static isNalStartCode([BI)Z
    .locals 4

    .line 281
    array-length v0, p0

    sub-int/2addr v0, p1

    sget-object v1, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    sget-object v1, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 284
    array-length v3, v1

    if-ge v0, v3, :cond_2

    add-int v3, p1, v0

    .line 285
    aget-byte v3, p0, v3

    aget-byte v1, v1, v0

    if-eq v3, v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static parseAlacAudioSpecificConfig([B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    const/16 p0, 0x9

    .line 51
    invoke-virtual {v0, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 52
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    const/16 v1, 0x14

    .line 53
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 54
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static parseCea708InitializationData(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)Z"
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 79
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    .line 80
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    aget-byte p0, p0, v1

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static splitNalUnits([B)[[B
    .locals 7

    const/4 v0, 0x0

    .line 235
    invoke-static {p0, v0}, Landroidx/media3/common/util/CodecSpecificDataUtil;->isNalStartCode([BI)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v0

    .line 242
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroidx/media3/common/util/CodecSpecificDataUtil;->NAL_START_CODE:[B

    .line 243
    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {p0, v2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->findNalStartCode([BI)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 245
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [[B

    move v3, v0

    .line 246
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 247
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 248
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_2
    array-length v5, p0

    :goto_1
    sub-int/2addr v5, v4

    .line 249
    new-array v6, v5, [B

    .line 250
    invoke-static {p0, v4, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
