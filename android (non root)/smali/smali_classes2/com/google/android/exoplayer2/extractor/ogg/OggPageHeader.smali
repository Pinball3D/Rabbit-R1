.class final Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;
.super Ljava/lang/Object;
.source "OggPageHeader.java"


# static fields
.field private static final CAPTURE_PATTERN:I = 0x4f676753

.field private static final CAPTURE_PATTERN_SIZE:I = 0x4

.field public static final EMPTY_PAGE_HEADER_SIZE:I = 0x1b

.field public static final MAX_PAGE_PAYLOAD:I = 0xfe01

.field public static final MAX_PAGE_SIZE:I = 0xff1b

.field public static final MAX_SEGMENT_COUNT:I = 0xff


# instance fields
.field public bodySize:I

.field public granulePosition:J

.field public headerSize:I

.field public final laces:[I

.field public pageChecksum:J

.field public pageSegmentCount:I

.field public pageSequenceNumber:J

.field public revision:I

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field public streamSerialNumber:J

.field public type:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    .line 60
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public populate(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->reset()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x1b

    .line 133
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 134
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 135
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 139
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string p0, "unsupported bit stream revision"

    .line 144
    invoke-static {p0}, Lcom/google/android/exoplayer2/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 150
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 151
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 152
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 153
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 154
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 158
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 159
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    invoke-static {p1, v0, v2, v1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    :goto_0
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    if-ge v2, p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 163
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->laces:[I

    .line 164
    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->revision:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->type:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->granulePosition:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->streamSerialNumber:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSequenceNumber:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageChecksum:J

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->pageSegmentCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->headerSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->bodySize:I

    return-void
.end method

.method public skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 82
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z

    move-result p0

    return p0
.end method

.method public skipToNextPage(Lcom/google/android/exoplayer2/extractor/ExtractorInput;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x4

    .line 104
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    .line 105
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-gez v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 107
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    .line 106
    invoke-static {p1, v4, v1, v3, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorUtil;->peekFullyQuietly(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[BIIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ogg/OggPageHeader;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 109
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 110
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    return v2

    .line 114
    :cond_2
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 117
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    cmp-long p0, v3, p2

    if-gez p0, :cond_5

    .line 118
    :cond_4
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_5

    goto :goto_2

    :cond_5
    return v1
.end method
