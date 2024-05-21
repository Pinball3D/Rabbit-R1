.class public final Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x4

.field private static final STATE_FINDING_HEADER:I = 0x0

.field private static final STATE_READING_FRAME:I = 0x2

.field private static final STATE_READING_HEADER:I = 0x1


# instance fields
.field private formatId:Ljava/lang/String;

.field private frameBytesRead:I

.field private frameDurationUs:J

.field private frameSize:I

.field private hasOutputFormat:Z

.field private final header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

.field private final headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasFF:Z

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    .line 69
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 70
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 71
    new-instance v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    return-void
.end method

.method private findHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 136
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 138
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 140
    aget-byte v3, v0, v1

    and-int/lit16 v4, v3, 0xff

    const/16 v5, 0xff

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v5, :cond_1

    and-int/lit16 v3, v3, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_1

    move v3, v7

    goto :goto_2

    :cond_1
    move v3, v6

    :goto_2
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 144
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v6, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 147
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private readFrameRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 226
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 227
    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge p1, v4, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 235
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method

.method private readHeaderRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 175
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 183
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 191
    iget p1, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameSize:I

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 193
    iget p1, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v3, p1

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget p1, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 196
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 197
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const/16 v3, 0x1000

    .line 198
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 199
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->header:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v3, v3, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 200
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 201
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 202
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 203
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 207
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->headerScratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 208
    invoke-interface {p1, v0, v2}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 100
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->readFrameRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 113
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->readHeaderRemainder(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    .line 104
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->findHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 86
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 87
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 88
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method public packetFinished()V
    .locals 0

    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->state:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
