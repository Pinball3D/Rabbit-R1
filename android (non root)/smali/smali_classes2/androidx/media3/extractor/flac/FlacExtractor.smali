.class public final Landroidx/media3/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x8000

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1

.field private static final SAMPLE_NUMBER_UNKNOWN:I = -0x1

.field private static final STATE_GET_FRAME_START_MARKER:I = 0x4

.field private static final STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES:I = 0x1

.field private static final STATE_READ_FRAMES:I = 0x5

.field private static final STATE_READ_ID3_METADATA:I = 0x0

.field private static final STATE_READ_METADATA_BLOCKS:I = 0x3

.field private static final STATE_READ_STREAM_MARKER:I = 0x2


# instance fields
.field private binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

.field private final buffer:Landroidx/media3/common/util/ParsableByteArray;

.field private currentFrameBytesWritten:I

.field private currentFrameFirstSampleNumber:J

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

.field private frameStartMarker:I

.field private id3Metadata:Landroidx/media3/common/Metadata;

.field private final id3MetadataDisabled:Z

.field private minFrameSize:I

.field private final sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

.field private state:I

.field private final streamMarkerAndInfoBlock:[B

.field private trackOutput:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Landroidx/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/flac/FlacExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 141
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 143
    new-instance p1, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    iput v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private findFrame(Landroidx/media3/common/util/ParsableByteArray;Z)J
    .locals 4

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 347
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 350
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 351
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 352
    invoke-static {p1, v1, v2, v3}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 355
    iget-wide p0, p0, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 380
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result p2

    iget v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 381
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :try_start_0
    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 385
    invoke-static {p1, p2, v1, v2}, Landroidx/media3/extractor/FlacFrameReader;->checkAndReadFrameHeader(Landroidx/media3/common/util/ParsableByteArray;Landroidx/media3/extractor/FlacStreamMetadata;ILandroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    .line 391
    :goto_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 398
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->sampleNumberHolder:Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;

    .line 399
    iget-wide p0, p0, Landroidx/media3/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 404
    :cond_4
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    goto :goto_4

    .line 406
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_4
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-static {p1}, Landroidx/media3/extractor/FlacMetadataReader;->getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 241
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/ExtractorOutput;

    .line 244
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 245
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 243
    invoke-direct {p0, v1, v2, v3, v4}, Landroidx/media3/extractor/flac/FlacExtractor;->getSeekMap(JJ)Landroidx/media3/extractor/SeekMap;

    move-result-object p1

    .line 242
    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 p1, 0x5

    iput p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private getSeekMap(JJ)Landroidx/media3/extractor/SeekMap;
    .locals 8

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 320
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 321
    iget-object v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v0, :cond_0

    .line 322
    new-instance p3, Landroidx/media3/extractor/FlacSeekTableSeekMap;

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {p3, p0, p1, p2}, Landroidx/media3/extractor/FlacSeekTableSeekMap;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;J)V

    return-object p3

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 323
    iget-wide v0, v0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 324
    new-instance v0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget v3, p0, Landroidx/media3/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;IJJ)V

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 327
    invoke-virtual {v0}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->getSeekMap()Landroidx/media3/extractor/SeekMap;

    move-result-object p0

    return-object p0

    .line 329
    :cond_1
    new-instance p1, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {p0}, Landroidx/media3/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p1
.end method

.method private getStreamMarkerAndInfoBlockBytes(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    const/4 v1, 0x0

    .line 211
    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 212
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 58
    new-instance v1, Landroidx/media3/extractor/flac/FlacExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private outputSampleMetadata()V
    .locals 11

    iget-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 416
    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, v2, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 417
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/media3/extractor/TrackOutput;

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 418
    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private readFrames(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 252
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 253
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    .line 257
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->handlePendingSeek(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 263
    invoke-static {p1, p2}, Landroidx/media3/extractor/FlacFrameReader;->getFirstSampleNumber(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacStreamMetadata;)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    return v0

    :cond_1
    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 268
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_4

    iget-object v4, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 273
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int/2addr v1, p2

    .line 272
    invoke-interface {p1, v4, p2, v1}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v4, :cond_3

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    add-int/2addr p2, p1

    .line 278
    invoke-virtual {v1, p2}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 279
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-nez p1, :cond_5

    .line 280
    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    return v1

    :cond_4
    move v4, v0

    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 286
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p1

    iget p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge p2, v1, :cond_6

    iget-object v5, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    sub-int/2addr v1, p2

    .line 290
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_6
    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 293
    invoke-direct {p0, p2, v4}, Landroidx/media3/extractor/flac/FlacExtractor;->findFrame(Landroidx/media3/common/util/ParsableByteArray;Z)J

    move-result-wide v4

    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 294
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 295
    invoke-virtual {v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 296
    invoke-interface {p1, v1, p2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_7

    .line 301
    invoke-direct {p0}, Landroidx/media3/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    iput v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iput-wide v4, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    :cond_7
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 306
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 309
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 311
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 310
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 312
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 313
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    :cond_8
    return v0
.end method

.method private readId3Metadata(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 206
    invoke-static {p1, v0}, Landroidx/media3/extractor/FlacMetadataReader;->readId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    iput v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private readMetadataBlocks(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-instance v0, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1}, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Landroidx/media3/extractor/FlacStreamMetadata;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 226
    invoke-static {p1, v0}, Landroidx/media3/extractor/FlacMetadataReader;->readMetadataBlock(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z

    move-result v1

    .line 228
    iget-object v2, v0, Landroidx/media3/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-static {v2}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/FlacStreamMetadata;

    iput-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 231
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 232
    iget p1, p1, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->minFrameSize:I

    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 233
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/TrackOutput;

    iget-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->flacStreamMetadata:Landroidx/media3/extractor/FlacStreamMetadata;

    iget-object v1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->id3Metadata:Landroidx/media3/common/Metadata;

    .line 234
    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    invoke-static {p1}, Landroidx/media3/extractor/FlacMetadataReader;->readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 156
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 157
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 180
    invoke-direct {p0, p1, p2}, Landroidx/media3/extractor/flac/FlacExtractor;->readFrames(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->getFrameStartMarker(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 174
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->readMetadataBlocks(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 171
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->readStreamMarker(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 168
    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->getStreamMarkerAndInfoBlockBytes(Landroidx/media3/extractor/ExtractorInput;)V

    return v1

    .line 165
    :cond_5
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flac/FlacExtractor;->readId3Metadata(Landroidx/media3/extractor/ExtractorInput;)V

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flac/FlacExtractor;->binarySearchSeeker:Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    iput p2, p0, Landroidx/media3/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacExtractor;->buffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 195
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 149
    invoke-static {p1, p0}, Landroidx/media3/extractor/FlacMetadataReader;->peekId3Metadata(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/common/Metadata;

    .line 150
    invoke-static {p1}, Landroidx/media3/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
