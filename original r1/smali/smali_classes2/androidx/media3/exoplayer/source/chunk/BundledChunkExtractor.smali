.class public final Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;
.implements Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

.field private static final POSITION_HOLDER:Landroidx/media3/extractor/PositionHolder;


# instance fields
.field private final bindingTrackOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private endTimeUs:J

.field private final extractor:Landroidx/media3/extractor/Extractor;

.field private extractorInitialized:Z

.field private final primaryTrackManifestFormat:Landroidx/media3/common/Format;

.field private final primaryTrackType:I

.field private sampleFormats:[Landroidx/media3/common/Format;

.field private seekMap:Landroidx/media3/extractor/SeekMap;

.field private trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->FACTORY:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    .line 80
    new-instance v0, Landroidx/media3/extractor/PositionHolder;

    invoke-direct {v0}, Landroidx/media3/extractor/PositionHolder;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->POSITION_HOLDER:Landroidx/media3/extractor/PositionHolder;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/Extractor;ILandroidx/media3/common/Format;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    iput p2, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackType:I

    iput-object p3, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackManifestFormat:Landroidx/media3/common/Format;

    .line 106
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic lambda$static$0(ILandroidx/media3/common/Format;ZLjava/util/List;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
    .locals 6

    .line 57
    iget-object p5, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 59
    invoke-static {p5}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    invoke-static {p5}, Landroidx/media3/common/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 63
    new-instance p2, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    const/4 p2, 0x4

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    move v1, p2

    .line 69
    new-instance p2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    .line 77
    :goto_1
    new-instance p3, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;

    invoke-direct {p3, p2, p0, p1}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;-><init>(Landroidx/media3/extractor/Extractor;ILandroidx/media3/common/Format;)V

    return-object p3
.end method


# virtual methods
.method public endTracks()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 174
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Format;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 175
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 176
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Landroidx/media3/common/Format;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->sampleFormats:[Landroidx/media3/common/Format;

    return-void
.end method

.method public getChunkIndex()Landroidx/media3/extractor/ChunkIndex;
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    .line 114
    instance-of v0, p0, Landroidx/media3/extractor/ChunkIndex;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/media3/extractor/ChunkIndex;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSampleFormats()[Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->sampleFormats:[Landroidx/media3/common/Format;

    return-object p0
.end method

.method public init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
    .locals 5

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->endTimeUs:J

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractorInitialized:Z

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v3, 0x0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 129
    invoke-interface {p1, p0}, Landroidx/media3/extractor/Extractor;->init(Landroidx/media3/extractor/ExtractorOutput;)V

    cmp-long p1, p2, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 131
    invoke-interface {p1, v3, v4, p2, p3}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractorInitialized:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    move-wide p2, v3

    .line 135
    :cond_2
    invoke-interface {v0, v3, v4, p2, p3}, Landroidx/media3/extractor/Extractor;->seek(JJ)V

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 136
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 137
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    invoke-virtual {p3, p1, p4, p5}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->bind(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    sget-object v0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->POSITION_HOLDER:Landroidx/media3/extractor/PositionHolder;

    .line 149
    invoke-interface {p0, p1, v0}, Landroidx/media3/extractor/Extractor;->read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    .line 150
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    if-nez p0, :cond_1

    move p1, v0

    :cond_1
    return p1
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->extractor:Landroidx/media3/extractor/Extractor;

    .line 144
    invoke-interface {p0}, Landroidx/media3/extractor/Extractor;->release()V

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->seekMap:Landroidx/media3/extractor/SeekMap;

    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 158
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->sampleFormats:[Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 163
    new-instance v0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;

    iget v1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackType:I

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->primaryTrackManifestFormat:Landroidx/media3/common/Format;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 165
    :goto_1
    invoke-direct {v0, p1, p2, v1}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;-><init>(IILandroidx/media3/common/Format;)V

    iget-object p2, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->endTimeUs:J

    .line 166
    invoke-virtual {v0, p2, v1, v2}, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor$BindingTrackOutput;->bind(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;J)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/BundledChunkExtractor;->bindingTrackOutputs:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method
