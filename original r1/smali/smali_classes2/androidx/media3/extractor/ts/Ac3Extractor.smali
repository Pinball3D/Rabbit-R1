.class public final Landroidx/media3/extractor/ts/Ac3Extractor;
.super Ljava/lang/Object;
.source "Ac3Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field private static final AC3_SYNC_WORD:I = 0xb77

.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final MAX_SYNC_FRAME_SIZE:I = 0xae2


# instance fields
.field private final reader:Landroidx/media3/extractor/ts/Ac3Reader;

.field private final sampleData:Landroidx/media3/common/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroidx/media3/extractor/ts/Ac3Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac3Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ts/Ac3Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroidx/media3/extractor/ts/Ac3Reader;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac3Reader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->reader:Landroidx/media3/extractor/ts/Ac3Reader;

    .line 59
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xae2

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 40
    new-instance v1, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {v1}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->reader:Landroidx/media3/extractor/ts/Ac3Reader;

    .line 111
    new-instance v0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/ts/Ac3Reader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 112
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 113
    new-instance p0, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, p0}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0xae2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 135
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 136
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->startedPacket:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->reader:Landroidx/media3/extractor/ts/Ac3Reader;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    .line 140
    invoke-virtual {p1, v2, v3, p2}, Landroidx/media3/extractor/ts/Ac3Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->startedPacket:Z

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->reader:Landroidx/media3/extractor/ts/Ac3Reader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 145
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/ts/Ac3Reader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->startedPacket:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/Ac3Extractor;->reader:Landroidx/media3/extractor/ts/Ac3Reader;

    .line 119
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/Ac3Reader;->seek()V

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance p0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 70
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p1, v3, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 71
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 72
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_4

    .line 80
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 81
    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v0, v1

    move v3, v2

    .line 86
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {p1, v4, v1, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 87
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 88
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/16 v5, 0xb77

    if-eq v4, v5, :cond_1

    .line 91
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v0, v3, v2

    const/16 v4, 0x2000

    if-lt v0, v4, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    add-int/2addr v0, v4

    const/4 v5, 0x4

    if-lt v0, v5, :cond_2

    return v4

    .line 100
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/extractor/Ac3Util;->parseAc3SyncframeSize([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, -0x6

    .line 104
    invoke-interface {p1, v4}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    .line 75
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 76
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    add-int/2addr v2, v4

    .line 78
    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0
.end method
