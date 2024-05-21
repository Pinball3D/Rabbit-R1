.class public final Landroidx/media3/extractor/ts/Ac4Extractor;
.super Ljava/lang/Object;
.source "Ac4Extractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final FRAME_HEADER_SIZE:I = 0x7

.field private static final MAX_SNIFF_BYTES:I = 0x2000

.field private static final READ_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final reader:Landroidx/media3/extractor/ts/Ac4Reader;

.field private final sampleData:Landroidx/media3/common/util/ParsableByteArray;

.field private startedPacket:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Landroidx/media3/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac4Extractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ts/Ac4Extractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroidx/media3/extractor/ts/Ac4Reader;

    invoke-direct {v0}, Landroidx/media3/extractor/ts/Ac4Reader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->reader:Landroidx/media3/extractor/ts/Ac4Reader;

    .line 67
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 42
    new-instance v1, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {v1}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->reader:Landroidx/media3/extractor/ts/Ac4Reader;

    .line 119
    new-instance v0, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/ts/Ac4Reader;->createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V

    .line 121
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    .line 122
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

    iget-object p2, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 139
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p2

    const/16 v0, 0x4000

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 145
    invoke-virtual {p2, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p2, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 146
    invoke-virtual {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-boolean p1, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->startedPacket:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->reader:Landroidx/media3/extractor/ts/Ac4Reader;

    const-wide/16 v2, 0x0

    const/4 p2, 0x4

    .line 150
    invoke-virtual {p1, v2, v3, p2}, Landroidx/media3/extractor/ts/Ac4Reader;->packetStarted(JI)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->startedPacket:Z

    :cond_1
    iget-object p1, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->reader:Landroidx/media3/extractor/ts/Ac4Reader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->sampleData:Landroidx/media3/common/util/ParsableByteArray;

    .line 155
    invoke-virtual {p1, p0}, Landroidx/media3/extractor/ts/Ac4Reader;->consume(Landroidx/media3/common/util/ParsableByteArray;)V

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->startedPacket:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/Ac4Extractor;->reader:Landroidx/media3/extractor/ts/Ac4Reader;

    .line 128
    invoke-virtual {p0}, Landroidx/media3/extractor/ts/Ac4Reader;->seek()V

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    new-instance p0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 78
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    invoke-interface {p1, v3, v1, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 79
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 80
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v3

    const v4, 0x494433

    if-eq v3, v4, :cond_4

    .line 88
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 89
    invoke-interface {p1, v2}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v0, v1

    move v3, v2

    .line 94
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    const/4 v5, 0x7

    invoke-interface {p1, v4, v1, v5}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 95
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 96
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const v5, 0xac40

    if-eq v4, v5, :cond_1

    const v5, 0xac41

    if-eq v4, v5, :cond_1

    .line 99
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    add-int/lit8 v3, v3, 0x1

    sub-int v0, v3, v2

    const/16 v4, 0x2000

    if-lt v0, v4, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v0, v5

    const/4 v6, 0x4

    if-lt v0, v6, :cond_2

    return v5

    .line 108
    :cond_2
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/media3/extractor/Ac4Util;->parseAc4SyncframeSize([BI)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v4, v4, -0x7

    .line 112
    invoke-interface {p1, v4}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_1

    :cond_4
    const/4 v3, 0x3

    .line 83
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 84
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    add-int/lit8 v4, v3, 0xa

    add-int/2addr v2, v4

    .line 86
    invoke-interface {p1, v3}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_0
.end method
