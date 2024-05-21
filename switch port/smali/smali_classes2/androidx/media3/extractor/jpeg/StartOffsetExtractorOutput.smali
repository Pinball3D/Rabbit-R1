.class public final Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# instance fields
.field private final extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLandroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    iput-object p3, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 51
    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 56
    new-instance v1, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 46
    invoke-interface {p0, p1, p2}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    return-object p0
.end method
