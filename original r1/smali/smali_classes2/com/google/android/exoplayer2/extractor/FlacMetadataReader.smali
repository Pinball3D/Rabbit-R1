.class public final Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
    }
.end annotation


# static fields
.field private static final SEEK_POINT_SIZE:I = 0x12

.field private static final STREAM_MARKER:I = 0x664c6143

.field private static final SYNC_CODE:I = 0x3ffe


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndPeekStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 81
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v4, 0x664c6143

    cmp-long p0, v0, v4

    if-nez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static getFrameStartMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 233
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 234
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 236
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    shr-int/lit8 v1, v0, 0x2

    const/16 v2, 0x3ffe

    if-ne v1, v2, :cond_0

    .line 244
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return v0

    .line 239
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const-string p0, "First frame does not start with sync code."

    const/4 v0, 0x0

    .line 240
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 66
    :cond_0
    sget-object p1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    .line 67
    :goto_0
    new-instance v1, Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;-><init>()V

    invoke-virtual {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->peekId3Data(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 68
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static readId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 102
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v0

    .line 103
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    .line 104
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 105
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return-object p1
.end method

.method public static readMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 149
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/4 v1, 0x4

    new-array v2, v1, [B

    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    .line 150
    iget-object v2, v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;->data:[B

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 152
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    const/4 v4, 0x7

    .line 153
    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v5, 0x18

    .line 154
    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    add-int/2addr v0, v1

    if-nez v4, :cond_0

    .line 156
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readStreamInfoBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    goto :goto_0

    .line 158
    :cond_0
    iget-object v5, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    if-eqz v5, :cond_4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 163
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p0

    .line 164
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithSeekTable(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    goto :goto_0

    :cond_1
    if-ne v4, v1, :cond_2

    .line 166
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readVorbisCommentMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/util/List;

    move-result-object p0

    .line 168
    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithVorbisComments(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    goto :goto_0

    :cond_2
    const/4 v6, 0x6

    if-ne v4, v6, :cond_3

    .line 170
    new-instance v4, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v4, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 171
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    invoke-interface {p0, v6, v3, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 172
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 173
    invoke-static {v4}, Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;->fromPictureBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/flac/PictureFrame;

    move-result-object p0

    .line 175
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->copyWithPictureFrames(Ljava/util/List;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    move-result-object p0

    iput-object p0, p1, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    goto :goto_0

    .line 177
    :cond_3
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :goto_0
    return v2

    .line 160
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 258
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 259
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    move-result-object p0

    return-object p0
.end method

.method public static readSeekTableMetadataBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;
    .locals 10

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    .line 198
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 199
    div-int/lit8 v0, v0, 0x12

    .line 200
    new-array v3, v0, [J

    .line 201
    new-array v4, v0, [J

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v8, v6, v8

    if-nez v8, :cond_0

    .line 207
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 208
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    goto :goto_1

    .line 211
    :cond_0
    aput-wide v6, v3, v5

    .line 212
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    const/4 v6, 0x2

    .line 213
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 216
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v1, v5

    long-to-int v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 217
    new-instance p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;-><init>([J[J)V

    return-object p0
.end method

.method private static readStreamInfoBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x26

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 250
    invoke-interface {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 251
    new-instance p0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;-><init>([BI)V

    return-object p0
.end method

.method public static readStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 120
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    .line 121
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v2, 0x664c6143

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Failed to read FLAC stream marker."

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static readVorbisCommentMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/extractor/ExtractorInput;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 265
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    const/4 p0, 0x4

    .line 266
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 268
    invoke-static {v0, v2, v2}, Lcom/google/android/exoplayer2/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;ZZ)Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    .line 270
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
