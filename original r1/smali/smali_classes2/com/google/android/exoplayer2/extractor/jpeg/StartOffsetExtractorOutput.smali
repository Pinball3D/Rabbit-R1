.class public final Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 49
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 54
    new-instance v1, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 44
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
