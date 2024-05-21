.class public final Landroidx/media3/extractor/ts/DvbSubtitleReader;
.super Ljava/lang/Object;
.source "DvbSubtitleReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/ElementaryStreamReader;


# instance fields
.field private bytesToCheck:I

.field private final outputs:[Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesWritten:I

.field private sampleTimeUs:J

.field private final subtitleInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private writingSample:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method

.method private checkNextByte(Landroidx/media3/common/util/ParsableByteArray;I)Z
    .locals 2

    .line 123
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    if-eq p1, p2, :cond_1

    iput-boolean v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_1
    iget p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    iget-boolean p0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    return p0
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    .line 104
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 108
    invoke-direct {p0, p1, v1}, Landroidx/media3/extractor/ts/DvbSubtitleReader;->checkNextByte(Landroidx/media3/common/util/ParsableByteArray;I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 113
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 114
    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 115
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 116
    invoke-interface {v5, p1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    :cond_3
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 61
    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->subtitleInfos:Ljava/util/List;

    .line 62
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;

    .line 63
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 64
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    .line 65
    new-instance v3, Landroidx/media3/common/Format$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 67
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    const-string v4, "application/dvbsubs"

    .line 68
    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v4, v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->initializationData:[B

    .line 69
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    iget-object v1, v1, Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;->language:Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 65
    invoke-interface {v2, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 72
    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public packetFinished()V
    .locals 11

    iget-boolean v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 93
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    iget-wide v5, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    const/4 v7, 0x1

    iget v8, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 94
    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    :cond_1
    return-void
.end method

.method public packetStarted(JI)V
    .locals 2

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    iput-wide p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleBytesWritten:I

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->bytesToCheck:I

    return-void
.end method

.method public seek()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->writingSample:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/DvbSubtitleReader;->sampleTimeUs:J

    return-void
.end method
