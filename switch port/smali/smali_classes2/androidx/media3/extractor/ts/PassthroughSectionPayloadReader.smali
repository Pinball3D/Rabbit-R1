.class public final Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;
.super Ljava/lang/Object;
.source "PassthroughSectionPayloadReader.java"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# instance fields
.field private format:Landroidx/media3/common/Format;

.field private output:Landroidx/media3/extractor/TrackOutput;

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->format:Landroidx/media3/common/Format;

    return-void
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "timestampAdjuster",
            "output"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 84
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 85
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public consume(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 8

    .line 66
    invoke-direct {p0}, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->assertInitialized()V

    iget-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 67
    invoke-virtual {v0}, Landroidx/media3/common/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    iget-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 68
    invoke-virtual {v0}, Landroidx/media3/common/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->format:Landroidx/media3/common/Format;

    .line 73
    iget-wide v4, v4, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->format:Landroidx/media3/common/Format;

    .line 74
    invoke-virtual {v4}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->format:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 75
    invoke-interface {v1, v0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    iget-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    .line 78
    invoke-interface {v0, p1, v5}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    iget-object v1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 79
    invoke-interface/range {v1 .. v7}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    .line 57
    invoke-virtual {p3}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 58
    invoke-virtual {p3}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->format:Landroidx/media3/common/Format;

    .line 61
    invoke-interface {p1, p0}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method
