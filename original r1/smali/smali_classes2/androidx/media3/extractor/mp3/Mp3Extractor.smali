.class public final Landroidx/media3/extractor/mp3/Mp3Extractor;
.super Ljava/lang/Object;
.source "Mp3Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3Extractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x8

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field public static final FLAG_ENABLE_INDEX_SEEKING:I = 0x4

.field private static final MAX_SNIFF_BYTES:I = 0x8000

.field private static final MAX_SYNC_BYTES:I = 0x20000

.field private static final MPEG_AUDIO_HEADER_MASK:I = -0x1f400

.field private static final REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

.field private static final SCRATCH_LENGTH:I = 0xa

.field private static final SEEK_HEADER_INFO:I = 0x496e666f

.field private static final SEEK_HEADER_UNSET:I = 0x0

.field private static final SEEK_HEADER_VBRI:I = 0x56425249

.field private static final SEEK_HEADER_XING:I = 0x58696e67


# instance fields
.field private basisTimeUs:J

.field private currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private disableSeeking:Z

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private final flags:I

.field private final forcedFirstSampleTimestampUs:J

.field private final gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

.field private final id3Peeker:Landroidx/media3/extractor/Id3Peeker;

.field private isSeekInProgress:Z

.field private metadata:Landroidx/media3/common/Metadata;

.field private realTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private sampleBytesRemaining:I

.field private samplesRead:J

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private seekTimeUs:J

.field private seeker:Landroidx/media3/extractor/mp3/Seeker;

.field private final skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

.field private final synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

.field private synchronizedHeaderData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    .line 123
    new-instance v0, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 178
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    iput-wide p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    .line 192
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 193
    new-instance p1, Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-direct {p1}, Landroidx/media3/extractor/MpegAudioUtil$Header;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 194
    new-instance p1, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {p1}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    .line 196
    new-instance p1, Landroidx/media3/extractor/Id3Peeker;

    invoke-direct {p1}, Landroidx/media3/extractor/Id3Peeker;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media3/extractor/Id3Peeker;

    .line 197
    new-instance p1, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

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

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 544
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 545
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private computeSeeker(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 447
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeReadSeekFrame(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    .line 448
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroidx/media3/extractor/mp3/Mp3Extractor;->maybeHandleSeekMetadata(Landroidx/media3/common/Metadata;J)Landroidx/media3/extractor/mp3/MlltSeeker;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    if-eqz v2, :cond_0

    .line 451
    new-instance p0, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;

    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Seeker$UnseekableSeeker;-><init>()V

    return-object p0

    :cond_0
    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_1

    .line 459
    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v2

    .line 460
    invoke-interface {v1}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    :goto_0
    move-wide v9, v0

    move-wide v5, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 462
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v2

    .line 463
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    .line 465
    invoke-static {v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v2

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 467
    :goto_1
    new-instance v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    .line 469
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v7

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/extractor/mp3/IndexSeeker;-><init>(JJJ)V

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

    .line 477
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v2

    if-nez v2, :cond_8

    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    :cond_6
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 479
    :goto_3
    invoke-direct {p0, p1, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private computeTimeUs(J)J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 347
    iget p0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    int-to-long v2, p0

    div-long/2addr p1, v2

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 535
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 536
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 537
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    .line 538
    new-instance v0, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;

    .line 539
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    move-object v2, v0

    move v8, p2

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/mp3/ConstantBitrateSeeker;-><init>(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Z)V

    return-object v0
.end method

.method private static getId3TlenUs(Landroidx/media3/common/Metadata;)J
    .locals 6

    if-eqz p0, :cond_1

    .line 592
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 594
    invoke-virtual {p0, v2}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v3

    .line 595
    instance-of v4, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;

    iget-object v4, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    const-string v5, "TLEN"

    .line 596
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 597
    iget-object p0, v3, Landroidx/media3/extractor/metadata/id3/TextInformationFrame;->values:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method private static getSeekFrameHeader(Landroidx/media3/common/util/ParsableByteArray;I)I
    .locals 2

    .line 559
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    if-lt v0, v1, :cond_1

    .line 560
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 561
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p1

    const v0, 0x58696e67

    if-eq p1, v0, :cond_0

    const v0, 0x496e666f

    if-ne p1, v0, :cond_1

    :cond_0
    return p1

    .line 566
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_2

    const/16 p1, 0x24

    .line 567
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 568
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

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

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 62
    new-instance v1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>()V

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

.method private static maybeHandleSeekMetadata(Landroidx/media3/common/Metadata;J)Landroidx/media3/extractor/mp3/MlltSeeker;
    .locals 4

    if-eqz p0, :cond_1

    .line 579
    invoke-virtual {p0}, Landroidx/media3/common/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 581
    invoke-virtual {p0, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 582
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    if-eqz v3, :cond_0

    .line 583
    check-cast v2, Landroidx/media3/extractor/metadata/id3/MlltFrame;

    invoke-static {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getId3TlenUs(Landroidx/media3/common/Metadata;)J

    move-result-wide v0

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/media3/extractor/mp3/MlltSeeker;->create(JLandroidx/media3/extractor/metadata/id3/MlltFrame;J)Landroidx/media3/extractor/mp3/MlltSeeker;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeReadSeekFrame(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 498
    new-instance v5, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-direct {v5, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 499
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v6, 0x0

    invoke-interface {p1, v0, v6, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 501
    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/16 v2, 0x15

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 502
    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_2

    const/16 v2, 0x24

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 503
    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0xd

    :cond_2
    :goto_0
    move v7, v2

    .line 504
    invoke-static {v5, v7}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getSeekFrameHeader(Landroidx/media3/common/util/ParsableByteArray;I)I

    move-result v8

    const v0, 0x58696e67

    const v9, 0x496e666f

    if-eq v8, v0, :cond_5

    if-ne v8, v9, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x56425249

    if-ne v8, v0, :cond_4

    .line 522
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Landroidx/media3/extractor/mp3/VbriSeeker;->create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/VbriSeeker;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 523
    iget p0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_2

    .line 527
    :cond_4
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 v0, 0x0

    goto :goto_2

    .line 507
    :cond_5
    :goto_1
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    invoke-static/range {v0 .. v5}, Landroidx/media3/extractor/mp3/XingSeeker;->create(JJLandroidx/media3/extractor/MpegAudioUtil$Header;Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/mp3/XingSeeker;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 508
    invoke-virtual {v1}, Landroidx/media3/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v1

    if-nez v1, :cond_6

    .line 510
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit16 v7, v7, 0x8d

    .line 511
    invoke-interface {p1, v7}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 512
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v1, v6, v2}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 513
    invoke-virtual {v1, v6}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 514
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromXingHeaderValue(I)Z

    :cond_6
    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 516
    iget v1, v1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    if-eqz v0, :cond_7

    .line 517
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->isSeekable()Z

    move-result v1

    if-nez v1, :cond_7

    if-ne v8, v9, :cond_7

    .line 519
    invoke-direct {p0, p1, v6}, Landroidx/media3/extractor/mp3/Mp3Extractor;->getConstantBitrateSeeker(Landroidx/media3/extractor/ExtractorInput;Z)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    return-object v0
.end method

.method private peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 430
    invoke-interface {v0}, Landroidx/media3/extractor/mp3/Seeker;->getDataEndPosition()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 432
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 438
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    const/4 v0, 0x0

    const/4 v2, 0x4

    .line 437
    invoke-interface {p1, p0, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr p0, v1

    return p0

    :catch_0
    return v1
.end method

.method private readInternal(Landroidx/media3/extractor/ExtractorInput;)I
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

    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 264
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    if-nez v0, :cond_2

    .line 270
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeSeeker(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/extractor/mp3/Seeker;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 271
    invoke-interface {v1, v0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 272
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget-object v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 274
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 275
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 276
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v2, v2, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 277
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v2, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 278
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    iget v2, v2, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 279
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    .line 280
    :goto_1
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v1

    .line 272
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 282
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 284
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->firstSamplePosition:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 287
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    .line 290
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->readSample(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p0

    return p0
.end method

.method private readSample(Landroidx/media3/extractor/ExtractorInput;)I
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

    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 296
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 297
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 300
    invoke-virtual {v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 301
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    int-to-long v4, v4

    .line 302
    invoke-static {v0, v4, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 303
    invoke-static {v0}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 309
    invoke-virtual {v4, v0}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 311
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    invoke-interface {v0, v4, v5}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    const-wide/16 v4, 0x0

    .line 313
    invoke-interface {v0, v4, v5}, Landroidx/media3/extractor/mp3/Seeker;->getTimeUs(J)J

    move-result-wide v4

    iget-wide v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    iget-wide v8, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->forcedFirstSampleTimestampUs:J

    sub-long/2addr v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 317
    iget v0, v0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 318
    instance-of v4, v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz v4, :cond_4

    .line 319
    check-cast v0, Landroidx/media3/extractor/mp3/IndexSeeker;

    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object v6, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 322
    iget v6, v6, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 323
    invoke-direct {p0, v4, v5}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v4

    .line 324
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-object v8, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v8, v8, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 322
    invoke-virtual {v0, v4, v5, v6, v7}, Landroidx/media3/extractor/mp3/IndexSeeker;->maybeAddSeekPoint(JJ)V

    iget-boolean v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    if-eqz v4, :cond_4

    iget-wide v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    .line 325
    invoke-virtual {v0, v4, v5}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    goto :goto_1

    .line 305
    :cond_3
    :goto_0
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    iput v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v3

    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    .line 331
    invoke-interface {v0, p1, v4, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p1

    if-ne p1, v2, :cond_5

    return v2

    :cond_5
    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    if-lez v0, :cond_6

    return v3

    :cond_6
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 340
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v5

    const/4 v7, 0x1

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    iget v8, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 339
    invoke-interface/range {v4 .. v10}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 341
    iget p1, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    int-to-long v4, p1

    add-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput v3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    return v3
.end method

.method private synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z
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

    .line 356
    :goto_0
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 357
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    sget-object v1, Landroidx/media3/extractor/mp3/Mp3Extractor;->REQUIRED_ID3_FRAME_PREDICATE:Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;

    :goto_1
    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->id3Peeker:Landroidx/media3/extractor/Id3Peeker;

    .line 363
    invoke-virtual {v4, p1, v1}, Landroidx/media3/extractor/Id3Peeker;->peekId3Data(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/metadata/id3/Id3Decoder$FramePredicate;)Landroidx/media3/common/Metadata;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v1, :cond_2

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->gaplessInfoHolder:Landroidx/media3/extractor/GaplessInfoHolder;

    .line 365
    invoke-virtual {v4, v1}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromMetadata(Landroidx/media3/common/Metadata;)Z

    .line 367
    :cond_2
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPeekPosition()J

    move-result-wide v4

    long-to-int v1, v4

    if-nez p2, :cond_3

    .line 369
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :cond_3
    move v4, v3

    goto :goto_2

    :cond_4
    move v1, v3

    move v4, v1

    :goto_2
    move v5, v4

    move v6, v5

    .line 373
    :goto_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->peekEndOfStreamOrHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_6

    if-lez v5, :cond_5

    goto :goto_5

    .line 378
    :cond_5
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_6
    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 380
    invoke-virtual {v7, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v7, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 381
    invoke-virtual {v7}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v7

    if-eqz v4, :cond_7

    int-to-long v9, v4

    .line 384
    invoke-static {v7, v9, v10}, Landroidx/media3/extractor/mp3/Mp3Extractor;->headersMatch(IJ)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 385
    :cond_7
    invoke-static {v7}, Landroidx/media3/extractor/MpegAudioUtil;->getFrameSize(I)I

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

    .line 389
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_a
    if-eqz p2, :cond_b

    .line 397
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int v5, v1, v4

    .line 398
    invoke-interface {p1, v5}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_4

    .line 400
    :cond_b
    invoke-interface {p1, v8}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    :goto_4
    move v5, v3

    move v6, v4

    move v4, v5

    goto :goto_3

    :cond_c
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v8, :cond_d

    iget-object v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeader:Landroidx/media3/extractor/MpegAudioUtil$Header;

    .line 406
    invoke-virtual {v4, v7}, Landroidx/media3/extractor/MpegAudioUtil$Header;->setForHeaderData(I)Z

    move v4, v7

    goto :goto_7

    :cond_d
    const/4 v7, 0x4

    if-ne v5, v7, :cond_f

    :goto_5
    if-eqz p2, :cond_e

    add-int/2addr v1, v6

    .line 416
    invoke-interface {p1, v1}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    goto :goto_6

    .line 418
    :cond_e
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    :goto_6
    iput v4, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    return v8

    :cond_f
    :goto_7
    add-int/lit8 v9, v9, -0x4

    .line 411
    invoke-interface {p1, v9}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_3
.end method


# virtual methods
.method public disableSeeking()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->disableSeeking:Z

    return-void
.end method

.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 211
    invoke-interface {p1, v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->realTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 213
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-direct {p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->assertInitialized()V

    .line 237
    invoke-direct {p0, p1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->readInternal(Landroidx/media3/extractor/ExtractorInput;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 238
    instance-of p2, p2, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    .line 240
    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;->computeTimeUs(J)J

    move-result-wide v0

    iget-object p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 241
    invoke-interface {p2}, Landroidx/media3/extractor/mp3/Seeker;->getDurationUs()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 242
    check-cast p2, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {p2, v0, v1}, Landroidx/media3/extractor/mp3/IndexSeeker;->setDurationUs(J)V

    iget-object p2, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 243
    invoke-interface {p2, p0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

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

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronizedHeaderData:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->basisTimeUs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->samplesRead:J

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->sampleBytesRemaining:I

    iput-wide p3, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seekTimeUs:J

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->seeker:Landroidx/media3/extractor/mp3/Seeker;

    .line 223
    instance-of p2, p1, Landroidx/media3/extractor/mp3/IndexSeeker;

    if-eqz p2, :cond_0

    check-cast p1, Landroidx/media3/extractor/mp3/IndexSeeker;

    invoke-virtual {p1, p3, p4}, Landroidx/media3/extractor/mp3/IndexSeeker;->isTimeUsInIndex(J)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->isSeekInProgress:Z

    iget-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->skippingTrackOutput:Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp3/Mp3Extractor;->currentTrackOutput:Landroidx/media3/extractor/TrackOutput;

    :cond_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 205
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/mp3/Mp3Extractor;->synchronize(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result p0

    return p0
.end method
