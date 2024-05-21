.class public final Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;
.super Ljava/lang/Object;
.source "OggOpusAudioPacketizer.java"


# static fields
.field private static final CHECKSUM_INDEX:I = 0x16

.field private static final FIRST_AUDIO_SAMPLE_PAGE_SEQUENCE_NUMBER:I = 0x2

.field private static final OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

.field private static final OGG_DEFAULT_ID_HEADER_PAGE:[B

.field private static final OGG_PACKET_HEADER_LENGTH:I = 0x1c

.field private static final SERIAL_NUMBER:I


# instance fields
.field private granulePosition:I

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pageSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    const/16 v0, 0x2c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        -0x2bt
        -0x3bt
        -0x9t
        0x1t
        0x13t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
        0x1t
        0x2t
        0x38t
        0x1t
        -0x80t
        -0x45t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x67t
        0x67t
        0x53t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xbt
        -0x67t
        0x57t
        0x53t
        0x1t
        0x10t
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-void
.end method

.method private packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    .line 115
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    .line 116
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    sub-int v11, v10, v9

    add-int/lit16 v1, v11, 0xff

    const/16 v12, 0xff

    .line 120
    div-int/lit16 v13, v1, 0xff

    add-int/lit8 v1, v13, 0x1b

    add-int/2addr v1, v11

    iget v2, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v15, 0x2

    if-ne v2, v15, :cond_1

    if-eqz v0, :cond_0

    .line 131
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1c

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    .line 132
    array-length v2, v2

    :goto_0
    sget-object v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    .line 133
    array-length v3, v3

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    move/from16 v16, v2

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    .line 137
    :goto_1
    invoke-direct {v7, v1}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget v1, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    if-ne v1, v15, :cond_3

    if-eqz v0, :cond_2

    .line 142
    invoke-direct {v7, v6, v0}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V

    goto :goto_2

    :cond_2
    sget-object v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_ID_HEADER_PAGE:[B

    .line 145
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_2
    sget-object v0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    .line 147
    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 151
    :cond_3
    invoke-static/range {p1 .. p1}, Landroidx/media3/extractor/OpusUtil;->parsePacketAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    iget v1, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    add-int/2addr v1, v0

    iput v1, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    int-to-long v2, v1

    iget v4, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v5, v13

    move-object v14, v6

    move/from16 v6, v17

    .line 154
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v13, :cond_5

    if-lt v11, v12, :cond_4

    const/4 v1, -0x1

    .line 161
    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit16 v11, v11, -0xff

    goto :goto_4

    :cond_4
    int-to-byte v1, v11

    .line 164
    invoke-virtual {v14, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-ge v9, v10, :cond_6

    .line 171
    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-virtual {v14, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 174
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 175
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget v0, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/16 v1, 0x16

    if-ne v0, v15, :cond_7

    .line 181
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 182
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int v2, v2, v16

    sget-object v3, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->OGG_DEFAULT_COMMENT_HEADER_PAGE:[B

    array-length v4, v3

    add-int/2addr v2, v4

    .line 185
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    .line 180
    invoke-static {v0, v2, v4, v5}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v0

    .line 187
    array-length v2, v3

    add-int v16, v16, v2

    add-int/lit8 v1, v16, 0x16

    invoke-virtual {v14, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    .line 192
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 193
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    .line 194
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v3, v4

    .line 191
    invoke-static {v0, v2, v3, v5}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result v0

    .line 196
    invoke-virtual {v14, v1, v0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    :goto_6
    iget v0, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-object v14
.end method

.method private replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 283
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private writeOggIdHeaderPage(Ljava/nio/ByteBuffer;[B)V
    .locals 7

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 213
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V

    .line 219
    array-length p0, p2

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 223
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 224
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1c

    const/4 v2, 0x0

    .line 222
    invoke-static {p0, v0, v1, v2}, Landroidx/media3/common/util/Util;->crc32([BIII)I

    move-result p0

    const/16 v0, 0x16

    .line 227
    invoke-virtual {p1, v0, p0}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 228
    array-length p0, p2

    add-int/lit8 p0, p0, 0x1c

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private writeOggPacketHeader(Ljava/nio/ByteBuffer;JIIZ)V
    .locals 0

    const/16 p0, 0x4f

    .line 248
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x67

    .line 249
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 250
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x53

    .line 251
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 254
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    if-eqz p6, :cond_0

    const/4 p6, 0x2

    goto :goto_0

    :cond_0
    move p6, p0

    .line 257
    :goto_0
    invoke-virtual {p1, p6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {p1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 266
    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 270
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    int-to-long p2, p5

    .line 273
    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedBytes;->checkedCast(J)B

    move-result p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public packetize(Landroidx/media3/decoder/DecoderInputBuffer;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderInputBuffer;",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 76
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 83
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 84
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 86
    :goto_0
    iget-object v0, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->packetizeInternal(Ljava/nio/ByteBuffer;[B)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->clear()V

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/media3/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    .line 89
    iget-object p2, p1, Landroidx/media3/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {p1}, Landroidx/media3/decoder/DecoderInputBuffer;->flip()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 95
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->granulePosition:I

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/audio/OggOpusAudioPacketizer;->pageSequenceNumber:I

    return-void
.end method
