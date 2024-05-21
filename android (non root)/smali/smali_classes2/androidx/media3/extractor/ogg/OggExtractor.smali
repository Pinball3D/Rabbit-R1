.class public Landroidx/media3/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final MAX_VERIFICATION_BYTES:I = 0x8


# instance fields
.field private output:Landroidx/media3/extractor/ExtractorOutput;

.field private streamReader:Landroidx/media3/extractor/ogg/StreamReader;

.field private streamReaderInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroidx/media3/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/ogg/OggExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 40
    new-instance v1, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static resetPosition(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return-object p0
.end method

.method private sniffInternal(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "streamReader"
        }
        result = true
    .end annotation

    .line 95
    new-instance v0, Landroidx/media3/extractor/ogg/OggPageHeader;

    invoke-direct {v0}, Landroidx/media3/extractor/ogg/OggPageHeader;-><init>()V

    const/4 v1, 0x1

    .line 96
    invoke-virtual {v0, p1, v1}, Landroidx/media3/extractor/ogg/OggPageHeader;->populate(Landroidx/media3/extractor/ExtractorInput;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->type:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget v0, v0, Landroidx/media3/extractor/ogg/OggPageHeader;->bodySize:I

    const/16 v2, 0x8

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 101
    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v2, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    .line 102
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-interface {p1, v4, v3, v0}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    .line 104
    invoke-static {v2}, Landroidx/media3/extractor/ogg/OggExtractor;->resetPosition(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/extractor/ogg/FlacReader;->verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    new-instance p1, Landroidx/media3/extractor/ogg/FlacReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/FlacReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    goto :goto_0

    .line 106
    :cond_1
    invoke-static {v2}, Landroidx/media3/extractor/ogg/OggExtractor;->resetPosition(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/extractor/ogg/VorbisReader;->verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    new-instance p1, Landroidx/media3/extractor/ogg/VorbisReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/VorbisReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {v2}, Landroidx/media3/extractor/ogg/OggExtractor;->resetPosition(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/extractor/ogg/OpusReader;->verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 109
    new-instance p1, Landroidx/media3/extractor/ogg/OpusReader;

    invoke-direct {p1}, Landroidx/media3/extractor/ogg/OpusReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 76
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    if-nez v0, :cond_1

    .line 78
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/OggExtractor;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    goto :goto_0

    :cond_0
    const-string p0, "Failed to determine bitstream type"

    const/4 p1, 0x0

    .line 79
    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 85
    invoke-interface {v0, v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 86
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v1, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    iget-object v3, p0, Landroidx/media3/extractor/ogg/OggExtractor;->output:Landroidx/media3/extractor/ExtractorOutput;

    .line 87
    invoke-virtual {v1, v3, v0}, Landroidx/media3/extractor/ogg/StreamReader;->init(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/TrackOutput;)V

    iput-boolean v2, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReaderInitialized:Z

    :cond_2
    iget-object p0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    .line 90
    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/ogg/StreamReader;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/ogg/OggExtractor;->streamReader:Landroidx/media3/extractor/ogg/StreamReader;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/ogg/StreamReader;->seek(JJ)V

    :cond_0
    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/OggExtractor;->sniffInternal(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p0
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
