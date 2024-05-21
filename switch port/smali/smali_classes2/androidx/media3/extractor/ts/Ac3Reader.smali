.class public final Landroidx/media3/extractor/ts/Ac3Reader;
.super Ljava/lang/Object;
.source "Ac3Reader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# static fields
.field private static final HEADER_SIZE:I = 0x80

.field private static final STATE_FINDING_SYNC:I = 0x0

.field private static final STATE_READING_HEADER:I = 0x1

.field private static final STATE_READING_SAMPLE:I = 0x2


# instance fields
.field private bytesRead:I

.field private format:Landroidx/media3/common/Format;

.field private formatId:Ljava/lang/String;

.field private final headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

.field private final headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

.field private final language:Ljava/lang/String;

.field private lastByteWas0B:Z

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private sampleDurationUs:J

.field private sampleSize:I

.field private state:I

.field private timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    .line 92
    new-instance v1, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, v0, Landroidx/media3/common/util/ParsableBitArray;->data:[B

    invoke-direct {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    return-void
.end method

.method private continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z
    .locals 2

    .line 174
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    .line 175
    invoke-virtual {p1, p2, v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    iget p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    if-ne p1, p3, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parseHeader()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBits:Landroidx/media3/common/util/ParsableBitArray;

    .line 208
    invoke-static {v0}, Landroidx/media3/extractor/Ac3Util;->parseAc3SyncframeInfo(Landroidx/media3/common/util/ParsableBitArray;)Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    if-eqz v1, :cond_0

    .line 209
    iget v1, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->channelCount:I

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleRate:I

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 212
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 213
    :cond_0
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    .line 215
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    .line 216
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->channelCount:I

    .line 217
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleRate:I

    .line 218
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->language:Ljava/lang/String;

    .line 219
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->bitrate:I

    .line 220
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const-string v2, "audio/ac3"

    .line 222
    iget-object v3, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget v2, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->bitrate:I

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    .line 225
    :cond_1
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 226
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 228
    :cond_2
    iget v1, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->frameSize:I

    iput v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleSize:I

    .line 231
    iget v0, v0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleCount:I

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleDurationUs:J

    return-void
.end method

.method private skipToNextSync(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 5

    .line 188
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/16 v4, 0x77

    if-ne v0, v4, :cond_2

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    return v3

    :cond_2
    if-ne v0, v2, :cond_3

    move v1, v3

    :cond_3
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 122
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    if-lez v0, :cond_5

    iget v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    iget v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleSize:I

    iget v3, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 143
    invoke-interface {v2, p1, v0}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    iget v7, p0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleSize:I

    if-ne v2, v7, :cond_0

    iget-wide v4, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 147
    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    iget-wide v4, p0, Landroidx/media3/extractor/ts/Ac3Reader;->sampleDurationUs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    :cond_2
    iput v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 134
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v3, 0x80

    invoke-direct {p0, p1, v0, v3}, Landroidx/media3/extractor/ts/Ac3Reader;->continueRead(Landroidx/media3/common/util/ParsableByteArray;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Reader;->parseHeader()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 136
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 137
    invoke-interface {v0, v1, v3}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iput v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    goto :goto_0

    .line 126
    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ts/Ac3Reader;->skipToNextSync(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 128
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v4, 0xb

    aput-byte v4, v0, v1

    iget-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->headerScratchBytes:Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    iput v2, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 1

    .line 108
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 109
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->formatId:Ljava/lang/String;

    .line 110
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p2

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->output:Landroidx/media3/extractor/TrackOutput;

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

    iput-wide p1, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    :cond_0
    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->state:I

    iput v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->bytesRead:I

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->lastByteWas0B:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/Ac3Reader;->timeUs:J

    return-void
.end method
