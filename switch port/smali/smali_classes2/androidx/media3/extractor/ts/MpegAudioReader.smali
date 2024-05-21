.class public final Landroidx/media3/extractor/ts/MpegAudioReader;
.super Ljava/lang/Object;
.source "MpegAudioReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


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

.field private final header:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field private final headerScratch:Landroidx/media3/common/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWasFF:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/MpegAudioReader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    .line 71
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 72
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 73
    new-instance v0, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    return-void
.end method

.method private findHeader(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    .line 138
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 139
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v1

    .line 140
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    .line 142
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
    iget-boolean v5, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v5, :cond_1

    and-int/lit16 v3, v3, 0xe0

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_1

    move v3, v7

    goto :goto_2

    :cond_1
    move v3, v6

    :goto_2
    iput-boolean v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    if-eqz v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .line 146
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iput-boolean v6, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 149
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    aget-byte v0, v0, v1

    aput-byte v0, p1, v7

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v7, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method

.method private readFrameRemainder(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 228
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 229
    invoke-interface {v1, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iget v4, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    if-ge p1, v4, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v1, v5

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 237
    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method

.method private readHeaderRemainder(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    const/4 v2, 0x4

    rsub-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 177
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    iget v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    invoke-virtual {p1, v1, v3, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    iget p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    if-ge p1, v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 185
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 193
    iget p1, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameSize:I

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 195
    iget p1, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v3, p1

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget p1, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v5, p1

    div-long/2addr v3, v5

    iput-wide v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameDurationUs:J

    .line 196
    new-instance p1, Landroidx/media3/common/Format$Builder;

    invoke-direct {p1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 198
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 199
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const/16 v3, 0x1000

    .line 200
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 201
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->header:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v3, v3, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 202
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->language:Ljava/lang/String;

    .line 203
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iget-object v3, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 205
    invoke-interface {v3, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->hasOutputFormat:Z

    :cond_2
    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 209
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->headerScratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 210
    invoke-interface {p1, v0, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 102
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/MpegAudioReader;->readFrameRemainder(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 109
    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/MpegAudioReader;->readHeaderRemainder(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/MpegAudioReader;->findHeader(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 88
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 89
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->formatId:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->output:Landroidx/media3/extractor/TrackOutput;

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

    iput-wide p1, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->frameBytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->lastByteWasFF:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/MpegAudioReader;->timeUs:J

    return-void
.end method
