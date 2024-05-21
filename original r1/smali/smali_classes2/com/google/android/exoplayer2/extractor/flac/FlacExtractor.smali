.class public final Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x8000

.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1

.field private static final SAMPLE_NUMBER_UNKNOWN:I = -0x1

.field private static final STATE_GET_FRAME_START_MARKER:I = 0x4

.field private static final STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES:I = 0x1

.field private static final STATE_READ_FRAMES:I = 0x5

.field private static final STATE_READ_ID3_METADATA:I = 0x0

.field private static final STATE_READ_METADATA_BLOCKS:I = 0x3

.field private static final STATE_READ_STREAM_MARKER:I = 0x2


# instance fields
.field private binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

.field private final buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private currentFrameBytesWritten:I

.field private currentFrameFirstSampleNumber:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

.field private frameStartMarker:I

.field private id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private final id3MetadataDisabled:Z

.field private minFrameSize:I

.field private final sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

.field private state:I

.field private final streamMarkerAndInfoBlock:[B

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 141
    new-instance p1, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private findFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)J
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 345
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 349
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 350
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 353
    iget-wide p0, p0, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 378
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p2

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 379
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 383
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;ILcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 p2, 0x0

    .line 389
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    if-le v1, v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 396
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;

    .line 397
    iget-wide p0, p0, Lcom/google/android/exoplayer2/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p0

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_4

    .line 404
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_4
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method private getFrameStartMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->getFrameStartMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 239
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 242
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 243
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 241
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->getSeekMap(JJ)Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p1

    .line 240
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private getSeekMap(JJ)Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 318
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 319
    iget-object v0, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v0, :cond_0

    .line 320
    new-instance p3, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/FlacSeekTableSeekMap;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;J)V

    return-object p3

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 321
    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 322
    new-instance v0, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-object v1, v0

    move-wide v4, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;IJJ)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    .line 325
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p0

    return-object p0

    .line 327
    :cond_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p1
.end method

.method private getStreamMarkerAndInfoBlockBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    const/4 v1, 0x0

    .line 209
    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 210
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 56
    new-instance v1, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private outputSampleMetadata()V
    .locals 11

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 414
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 415
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 416
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private readFrames(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 250
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 251
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    .line 255
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 261
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/FlacFrameReader;->getFirstSampleNumber(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    return v0

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 266
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p2

    const v1, 0x8000

    if-ge p2, v1, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 271
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int/2addr v1, p2

    .line 270
    invoke-interface {p1, v4, p2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    if-nez v4, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/2addr p2, p1

    .line 276
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 277
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-nez p1, :cond_5

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    return v1

    :cond_4
    move v4, v0

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 284
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p1

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge p2, v1, :cond_6

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sub-int/2addr v1, p2

    .line 288
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {v5, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :cond_6
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 291
    invoke-direct {p0, p2, v4}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->findFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)J

    move-result-wide v4

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 292
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result p2

    sub-int/2addr p2, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 293
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 294
    invoke-interface {p1, v1, p2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long p1, v4, v2

    if-eqz p1, :cond_7

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 304
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 307
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 309
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 308
    invoke-static {p2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 310
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    :cond_8
    return v0
.end method

.method private readId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 204
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private readMetadataBlocks(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 224
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readMetadataBlock(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z

    move-result v1

    .line 226
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 229
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    .line 230
    iget p1, p1, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->minFrameSize:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 231
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;->getFormat([BLcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private readStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->readStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 155
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

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

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->readFrames(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I

    move-result p0

    return p0

    .line 180
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 175
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->getFrameStartMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 172
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->readMetadataBlocks(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 169
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->readStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 166
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->getStreamMarkerAndInfoBlockBytes(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    return v1

    .line 163
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->readId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

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

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/flac/FlacBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v0

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    :goto_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    iput p2, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 193
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 147
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 148
    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
