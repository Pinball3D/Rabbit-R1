.class public Lcom/google/android/exoplayer2/text/SubtitleExtractor;
.super Ljava/lang/Object;
.source "SubtitleExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400

.field private static final STATE_CREATED:I = 0x0

.field private static final STATE_EXTRACTING:I = 0x2

.field private static final STATE_FINISHED:I = 0x4

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_RELEASED:I = 0x5

.field private static final STATE_SEEKING:I = 0x3


# instance fields
.field private bytesRead:I

.field private final cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplayer2/Format;

.field private final samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ">;"
        }
    .end annotation
.end field

.field private seekTimeUs:J

.field private state:I

.field private final subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private final timestamps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/SubtitleDecoder;Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 97
    new-instance p1, Lcom/google/android/exoplayer2/text/CueEncoder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/text/CueEncoder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    .line 98
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 101
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const-string v0, "text/x-exoplayer-cues"

    .line 102
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 103
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    return-void
.end method

.method private decode()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 215
    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    :goto_0
    const-wide/16 v1, 0x5

    if-nez v0, :cond_0

    .line 217
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 218
    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 220
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->ensureSpaceForWrite(I)V

    .line 221
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 222
    iget-object v3, v0, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 223
    invoke-interface {v3, v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 224
    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :goto_1
    if-nez v0, :cond_1

    .line 226
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 227
    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    goto :goto_1

    .line 229
    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-ge v6, v1, :cond_2

    .line 230
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->cueEncoder:Lcom/google/android/exoplayer2/text/CueEncoder;

    .line 231
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/CueEncoder;->encode(Ljava/util/List;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 232
    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    .line 233
    new-instance v3, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 235
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "SubtitleDecoder failed."

    .line 240
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 237
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 238
    new-instance p0, Ljava/io/InterruptedIOException;

    invoke-direct {p0}, Ljava/io/InterruptedIOException;-><init>()V

    throw p0
.end method

.method private readFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    add-int/lit16 v1, v1, 0x400

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->ensureCapacity(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->capacity()I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    .line 207
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    int-to-long p0, p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    :cond_2
    if-ne v0, v1, :cond_4

    :cond_3
    const/4 p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private skipInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    .line 192
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x400

    .line 190
    :goto_0
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private writeToOutput()V
    .locals 11

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 245
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 251
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 250
    invoke-static {v4, v0, v3, v3}, Lcom/google/android/exoplayer2/util/Util;->binarySearchFloor(Ljava/util/List;Ljava/lang/Comparable;ZZ)I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    .line 252
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->samples:Ljava/util/List;

    .line 253
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 254
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 255
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v3

    array-length v8, v3

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 256
    invoke-interface {v3, v1, v8}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget-object v4, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->timestamps:Ljava/util/List;

    .line 258
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 257
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 7

    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 121
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x3

    .line 123
    invoke-interface {p1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 124
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 125
    new-instance v0, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;

    new-array v3, v1, [J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    new-array v6, v1, [J

    aput-wide v4, v6, v2

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v3, v6, v4, v5}, Lcom/google/android/exoplayer2/extractor/IndexSeekMap;-><init>([J[JJ)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 130
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x5

    if-eq p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 136
    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x2

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 139
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1

    .line 140
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/common/primitives/Ints;->checkedCast(J)I

    move-result v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x400

    .line 138
    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->bytesRead:I

    iput v2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_2
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v0, 0x4

    if-ne p2, v2, :cond_3

    .line 146
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->readFromInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 148
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->decode()V

    .line 149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    iput v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_3
    iget p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 154
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->skipInput(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->writeToOutput()V

    iput v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_4
    iget p0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    if-ne p0, v0, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    return v1
.end method

.method public release()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->subtitleDecoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 184
    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    iput v1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    return-void
.end method

.method public seek(JJ)V
    .locals 1

    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 168
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-wide p3, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->seekTimeUs:J

    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iput p2, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/google/android/exoplayer2/text/SubtitleExtractor;->state:I

    :cond_2
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
