.class final Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnknownSubtitlesExtractor"
.end annotation


# instance fields
.field private final format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 690
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    .line 691
    new-instance v1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    .line 692
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lcom/google/android/exoplayer2/Format;

    .line 695
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const-string v1, "text/x-unknown"

    .line 696
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 697
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p0

    .line 698
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    .line 693
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p0, 0x7fffffff

    .line 703
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skip(I)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
