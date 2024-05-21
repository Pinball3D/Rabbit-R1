.class public final Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;
.super Ljava/lang/Object;
.source "AdtsExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field private static final MAX_PACKET_SIZE:I = 0x800

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE:I = 0x3e8


# instance fields
.field private averageFrameSize:I

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private firstFramePosition:J

.field private firstSampleTimestampUs:J

.field private final flags:I

.field private hasCalculatedAverageFrameSize:Z

.field private hasOutputSeekMap:Z

.field private final packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private final scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    .line 130
    new-instance p1, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 131
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    .line 135
    new-instance p1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 136
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    return-void
.end method

.method private calculateAverageFrameSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    .line 296
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 297
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 299
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->peekId3Header(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    :cond_1
    const/4 v1, 0x0

    move v2, v1

    :cond_2
    const/4 v5, 0x1

    :try_start_0
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 306
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x2

    .line 305
    invoke-interface {p1, v6, v1, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 307
    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 308
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v6

    .line 309
    invoke-static {v6}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 317
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v6

    const/4 v7, 0x4

    .line 316
    invoke-interface {p1, v6, v1, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BIIZ)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xe

    .line 320
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v7, 0xd

    .line 321
    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/4 v7, 0x6

    if-le v6, v7, :cond_6

    int-to-long v7, v6

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    const/16 v7, 0x3e8

    if-ne v2, v7, :cond_5

    goto :goto_0

    :cond_5
    add-int/lit8 v6, v6, -0x6

    .line 332
    invoke-interface {p1, v6, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(IZ)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    goto :goto_1

    :cond_6
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    const-string v1, "Malformed ADTS stream"

    const/4 v6, 0x0

    .line 325
    invoke-static {v1, v6}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    :goto_1
    move v1, v2

    .line 343
    :goto_2
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    if-lez v1, :cond_8

    int-to-long v0, v1

    .line 345
    div-long/2addr v3, v0

    long-to-int p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    goto :goto_3

    :cond_8
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    :goto_3
    iput-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasCalculatedAverageFrameSize:Z

    return-void
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7a1200

    mul-long/2addr v0, v2

    .line 366
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private getConstantBitrateSeekMap(JZ)Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 11

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 353
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 354
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    move-object v3, v0

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 52
    new-instance v1, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputSeekMap(JZ)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->averageFrameSize:I

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 274
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long v5, v5, v3

    if-nez v5, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_4

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 281
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->getSampleDurationUs()J

    move-result-wide v5

    cmp-long p3, v5, v3

    if-eqz p3, :cond_4

    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v2, v1

    .line 283
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->getConstantBitrateSeekMap(JZ)Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p1

    .line 282
    invoke-interface {p3, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 286
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    invoke-direct {p2, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->hasOutputSeekMap:Z

    return-void
.end method

.method private peekId3Header(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 247
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 248
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 249
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v2

    const v3, 0x494433

    if-eq v2, v3, :cond_1

    .line 257
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 258
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstFramePosition:J

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v3, 0x3

    .line 252
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 253
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 255
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 193
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->createTracks(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 194
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 211
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    iget p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->flags:I

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    and-int/2addr p2, v3

    if-eqz p2, :cond_1

    const-wide/16 v4, -0x1

    cmp-long p2, v0, v4

    if-eqz p2, :cond_1

    .line 219
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->calculateAverageFrameSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)V

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 222
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v2, 0x800

    const/4 v4, 0x0

    invoke-interface {p1, p2, v4, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    .line 224
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->maybeOutputSeekMap(JZ)V

    if-eqz v2, :cond_3

    return p2

    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 230
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 231
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    const/4 p2, 0x4

    .line 235
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->packetStarted(JI)V

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->packetBuffer:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 240
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    return v4
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->startedPacket:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->reader:Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;

    .line 200
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->seek()V

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->firstSampleTimestampUs:J

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->peekId3Header(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :cond_0
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 151
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 152
    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 153
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    .line 154
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/ts/AdtsReader;->isAdtsSyncWord(I)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 160
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 161
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    :goto_0
    move v2, v1

    move v4, v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 168
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0xe

    .line 169
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->setPosition(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/ts/AdtsExtractor;->scratchBits:Lcom/google/android/exoplayer2/util/ParsableBitArray;

    const/16 v6, 0xd

    .line 170
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    .line 177
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 178
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 180
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    add-int/2addr v4, v5

    :goto_1
    sub-int v5, v3, v0

    const/16 v6, 0x2000

    if-lt v5, v6, :cond_0

    return v1
.end method
