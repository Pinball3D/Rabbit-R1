.class Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOutputProviderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;

    .line 192
    invoke-static {p0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->access$400(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getSampleFormats()[Landroidx/media3/common/Format;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->access$302(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;[Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;

    .line 185
    invoke-static {v0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->access$100(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->access$100(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->access$200(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/extractor/DummyTrackOutput;

    move-result-object p0

    :goto_0
    return-object p0
.end method
