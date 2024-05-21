.class Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOutputProviderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 192
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$400(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;->getSampleFormats()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$302(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;[Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    .line 185
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$100(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$100(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;->access$200(Lcom/google/android/exoplayer2/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p0

    :goto_0
    return-object p0
.end method
