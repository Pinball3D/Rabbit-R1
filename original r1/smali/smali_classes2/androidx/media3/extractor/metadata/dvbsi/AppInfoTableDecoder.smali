.class public final Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "AppInfoTableDecoder.java"


# static fields
.field public static final APPLICATION_INFORMATION_TABLE_ID:I = 0x74

.field private static final DESCRIPTOR_SIMPLE_APPLICATION_LOCATION:I = 0x15

.field private static final DESCRIPTOR_TRANSPORT_PROTOCOL:I = 0x2

.field private static final TRANSPORT_PROTOCOL_HTTP:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method

.method private static parseAit(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/common/Metadata;
    .locals 14

    const/16 v0, 0xc

    .line 62
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 63
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 64
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x4

    sub-int/2addr v2, v1

    const/16 v3, 0x2c

    .line 68
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 70
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 74
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    const/16 v3, 0x10

    .line 77
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 79
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v5

    const/4 v6, 0x0

    if-ge v5, v2, :cond_5

    const/16 v5, 0x30

    .line 85
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/16 v5, 0x8

    .line 87
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    .line 90
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 92
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    .line 94
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v9

    add-int/2addr v9, v8

    move-object v8, v6

    .line 95
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v10

    if-ge v10, v9, :cond_4

    .line 96
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 97
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v12

    add-int/2addr v12, v11

    const/4 v13, 0x2

    if-ne v10, v13, :cond_2

    .line 102
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    .line 104
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    const/4 v11, 0x3

    if-ne v10, v11, :cond_3

    .line 108
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->getBytePosition()I

    move-result v10

    if-ge v10, v12, :cond_3

    .line 109
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v6

    .line 110
    sget-object v10, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v6, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_1

    .line 116
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    .line 117
    invoke-virtual {p0, v13}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    const/16 v13, 0x15

    if-ne v10, v13, :cond_3

    .line 123
    sget-object v8, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v11, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBytesAsString(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    :cond_3
    mul-int/lit8 v12, v12, 0x8

    .line 126
    invoke-virtual {p0, v12}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    goto :goto_1

    :cond_4
    mul-int/lit8 v9, v9, 0x8

    .line 129
    invoke-virtual {p0, v9}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    if-eqz v6, :cond_0

    if-eqz v8, :cond_0

    .line 132
    new-instance v5, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 136
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v6, Landroidx/media3/common/Metadata;

    invoke-direct {v6, v4}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    :goto_3
    return-object v6
.end method


# virtual methods
.method protected decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 0

    .line 53
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/16 p1, 0x74

    if-ne p0, p1, :cond_0

    .line 55
    new-instance p0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/media3/common/util/ParsableBitArray;-><init>([BI)V

    invoke-static {p0}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTableDecoder;->parseAit(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/common/Metadata;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
