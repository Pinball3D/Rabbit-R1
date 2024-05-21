.class public final Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;
.super Ljava/lang/Object;
.source "PassthroughSectionPayloadReader.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ts/SectionPayloadReader;


# instance fields
.field private format:Lcom/google/android/exoplayer2/Format;

.field private output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lcom/google/android/exoplayer2/Format;

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 82
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 83
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 8

    .line 64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->assertInitialized()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getLastAdjustedTimestampUs()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimestampAdjuster;->getTimestampOffsetUs()J

    move-result-wide v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 71
    iget-wide v4, v4, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 72
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 73
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    .line 75
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 76
    invoke-interface {v0, p1, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 77
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public init(Lcom/google/android/exoplayer2/util/TimestampAdjuster;Lcom/google/android/exoplayer2/extractor/ExtractorOutput;Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->timestampAdjuster:Lcom/google/android/exoplayer2/util/TimestampAdjuster;

    .line 55
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 56
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/ts/PassthroughSectionPayloadReader;->format:Lcom/google/android/exoplayer2/Format;

    .line 59
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
