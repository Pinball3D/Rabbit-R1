.class public final Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x8

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final MAX_SNIFF_BYTES:I = 0x8000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67


# instance fields
.field private basisTimeUs:J

.field private currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private disableSeeking:Z

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

.field private final id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

.field private isSeekInProgress:Z

.field private metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

.field private realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private seekTimeUs:J

.field private seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

.field private final skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

.field private synchronizedHeaderData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    .line 121
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 176
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 190
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 191
    new-instance p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 192
    new-instance p1, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 194
    new-instance p1, Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    .line 195
    new-instance p1, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 542
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 543
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private computeSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 445
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 446
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v2, :cond_0

    .line 449
    new-instance p0, Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object p0

    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    .line 457
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v2

    .line 458
    invoke-interface {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 460
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v2

    .line 461
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 463
    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 465
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    .line 467
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;-><init>(JJJ)V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 475
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    :cond_6
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 477
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private computeTimeUs(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 345
    iget p0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 533
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 534
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 535
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 536
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;

    .line 537
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Z)V

    return-object v0
.end method

.method private static getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J
    .locals 6

    if-eqz p0, :cond_1

    .line 590
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 592
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v3

    .line 593
    instance-of v4, v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    if-eqz v4, :cond_0

    check-cast v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    iget-object v4, v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    const-string v5, "TLEN"

    .line 594
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 595
    iget-object p0, v3, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static getSeekFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 2

    .line 557
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 558
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 559
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 564
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 565
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 566
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result p0

    const p1, 0x56425249

    if-ne p0, p1, :cond_2

    return p1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static headersMatch(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 60
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic lambda$static$1(IIIII)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x2

    const/16 v2, 0x4d

    if-ne p1, v0, :cond_0

    const/16 v0, 0x4f

    if-ne p2, v0, :cond_0

    if-ne p3, v2, :cond_0

    if-eq p4, v2, :cond_1

    if-eq p0, v1, :cond_1

    :cond_0
    if-ne p1, v2, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static maybeHandleSeekMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;
    .locals 4

    if-eqz p0, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 579
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    .line 580
    instance-of v3, v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    .line 581
    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/MlltFrame;

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getId3TlenUs(Lcom/google/android/exoplayer2/metadata/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;->create(JLcom/google/android/exoplayer2/metadata/id3/MlltFrame;J)Lcom/google/android/exoplayer2/extractor/mp3/MlltSeeker;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeReadSeekFrame(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v0, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    .line 497
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 499
    iget v0, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->version:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 500
    iget v0, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_2

    const/16 v2, 0x24

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 501
    iget v0, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    :cond_2
    :goto_0
    move v7, v2

    .line 502
    invoke-static {v5, v7}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    .line 520
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;->create(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/VbriSeeker;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 521
    iget p0, p0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2

    .line 525
    :cond_4
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v0, 0x0

    goto :goto_2

    .line 505
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;->create(JJLcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp3/XingSeeker;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    .line 506
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-nez v1, :cond_6

    .line 508
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    .line 509
    invoke-interface {p1, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 510
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 511
    invoke-virtual {v1, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 512
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    :cond_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 514
    iget v1, v1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    if-eqz v0, :cond_7

    .line 515
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    .line 517
    invoke-direct {p0, p1, v6}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    return-object v0
.end method

.method private peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 436
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 435
    invoke-interface {p1, p0, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method private readInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput",
            "realTrackOutput"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 262
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    if-nez v0, :cond_2

    .line 268
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeSeeker(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 269
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 270
    new-instance v1, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget-object v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 272
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 273
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->channels:I

    .line 274
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->sampleRate:I

    .line 275
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 276
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    iget v2, v2, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 277
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 278
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 279
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    .line 270
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 280
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 282
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 285
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    .line 288
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "realTrackOutput",
            "seeker"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 294
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 295
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 298
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 299
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    .line 300
    invoke-static {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 301
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 307
    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 309
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    const-wide/16 v4, 0x0

    .line 311
    invoke-interface {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 315
    iget v0, v0, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 316
    instance-of v4, v0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz v4, :cond_4

    .line 317
    check-cast v0, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 320
    iget v6, v6, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 321
    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v4

    .line 322
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v8, v8, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 320
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v4, :cond_4

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 323
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    goto :goto_1

    .line 303
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v3

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 329
    invoke-interface {v0, p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    :cond_5
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 338
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    const/4 v7, 0x1

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    iget v8, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->frameSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 337
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 339
    iget p1, p1, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return v3
.end method

.method private synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const v0, 0x8000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 354
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 355
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->id3Peeker:Lcom/google/android/exoplayer2/extractor/Id3Peeker;

    .line 361
    invoke-virtual {v4, p1, v1}, Lcom/google/android/exoplayer2/extractor/Id3Peeker;->peekId3Data(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;

    .line 363
    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z

    .line 365
    :cond_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    long-to-int v1, v4

    if-nez p2, :cond_3

    .line 367
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v1, v3

    move v4, v1

    :goto_2
    move v5, v4

    move v6, v5

    .line 371
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-lez v5, :cond_5

    goto :goto_5

    .line 376
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_6
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 378
    invoke-virtual {v7, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 379
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eqz v4, :cond_7

    int-to-long v9, v4

    .line 382
    invoke-static {v7, v9, v10}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 383
    :cond_7
    invoke-static {v7}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil;->getFrameSize(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_c

    :cond_8
    add-int/lit8 v4, v6, 0x1

    if-ne v6, v0, :cond_a

    if-eqz p2, :cond_9

    return v3

    :cond_9
    const-string p0, "Searched too many bytes."

    .line 387
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_a
    if-eqz p2, :cond_b

    .line 395
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v5, v1, v4

    .line 396
    invoke-interface {p1, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_4

    .line 398
    :cond_b
    invoke-interface {p1, v8}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    :goto_4
    move v5, v3

    move v6, v4

    move v4, v5

    goto :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_d

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeader:Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;

    .line 404
    invoke-virtual {v4, v7}, Lcom/google/android/exoplayer2/audio/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move v4, v7

    goto :goto_7

    :cond_d
    const/4 v7, 0x4

    if-ne v5, v7, :cond_f

    :goto_5
    if-eqz p2, :cond_e

    add-int/2addr v1, v6

    .line 414
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_6

    .line 416
    :cond_e
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_6
    iput v4, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v8

    :cond_f
    :goto_7
    add-int/lit8 v9, v9, -0x4

    .line 409
    invoke-interface {p1, v9}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_3
.end method


# virtual methods
.method public disableSeeking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 209
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->realTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 211
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 235
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->readInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 236
    instance-of p2, p2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 238
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v0

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 239
    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 240
    check-cast p2, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 241
    invoke-interface {p2, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :cond_0
    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->seeker:Lcom/google/android/exoplayer2/extractor/mp3/Seeker;

    .line 221
    instance-of p2, p1, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;

    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->currentTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    :cond_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/mp3/Mp3Extractor;->synchronize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
