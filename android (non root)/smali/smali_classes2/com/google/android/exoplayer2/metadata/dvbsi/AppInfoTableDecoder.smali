.class public final Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "AppInfoTableDecoder.java"


# static fields
.field public static final APPLICATION_INFORMATION_TABLE_ID:I = 0x74

.field private static final DESCRIPTOR_SIMPLE_APPLICATION_LOCATION:I = 0x15

.field private static final DESCRIPTOR_TRANSPORT_PROTOCOL:I = 0x2

.field private static final TRANSPORT_PROTOCOL_HTTP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method

.method private static parseAit(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 14

    const/16 v0, 0xc

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x4

    sub-int/2addr v2, v1

    const/16 v3, 0x2c

    .line 66
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 72
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    const/16 v3, 0x10

    .line 75
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v5

    const/4 v6, 0x0

    if-ge v5, v2, :cond_5

    const/16 v5, 0x30

    .line 83
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0x8

    .line 85
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 88
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v9

    add-int/2addr v9, v8

    move-object v8, v6

    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v10

    if-ge v10, v9, :cond_4

    .line 94
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 95
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 96
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v12

    add-int/2addr v12, v11

    const/4 v13, 0x2

    if-ne v10, v13, :cond_2

    .line 100
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 102
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v10

    if-ge v10, v12, :cond_3

    .line 107
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 108
    sget-object v10, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    .line 114
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 115
    invoke-virtual {p0, v13}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/16 v13, 0x15

    if-ne v10, v13, :cond_3

    .line 121
    sget-object v8, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v11, v8}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    mul-int/lit8 v12, v12, 0x8

    .line 124
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v9, v9, 0x8

    .line 127
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    .line 130
    new-instance v5, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 134
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v6, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v6, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v6
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 51
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 p1, 0x74

    if-ne p0, p1, :cond_0

    .line 53
    new-instance p0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/dvbsi/AppInfoTableDecoder;->parseAit(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
