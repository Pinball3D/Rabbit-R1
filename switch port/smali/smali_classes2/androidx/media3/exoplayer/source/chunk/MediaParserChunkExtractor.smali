.class public final Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
    }
.end annotation


# static fields
.field public static final FACTORY:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

.field private static final TAG:Ljava/lang/String; = "MediaPrsrChunkExtractor"


# instance fields
.field private final dummyTrackOutput:Landroidx/media3/extractor/DummyTrackOutput;

.field private final inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

.field private final mediaParser:Landroid/media/MediaParser;

.field private final outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

.field private pendingSeekUs:J

.field private sampleFormats:[Landroidx/media3/common/Format;

.field private trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

.field private final trackOutputProviderAdapter:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->FACTORY:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$Factory;

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/Format;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/exoplayer/analytics/PlayerId;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    const/4 v1, 0x1

    .line 112
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 101
    invoke-direct {v0, p2, p1, v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;-><init>(Landroidx/media3/common/Format;IZ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 104
    new-instance p1, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 105
    iget-object p1, p2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 107
    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->isMatroska(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.media.mediaparser.MatroskaParser"

    goto :goto_0

    :cond_0
    const-string p1, "android.media.mediaparser.FragmentedMp4Parser"

    .line 110
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSelectedParserName(Ljava/lang/String;)V

    .line 111
    invoke-static {p1, v0}, Landroid/media/MediaParser;->createByName(Ljava/lang/String;Landroid/media/MediaParser$OutputConsumer;)Landroid/media/MediaParser;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    const-string p2, "android.media.mediaparser.matroska.disableCuesSeeking"

    .line 112
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string p2, "android.media.mediaparser.inBandCryptoInfo"

    .line 113
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string p2, "android.media.mediaparser.includeSupplementalData"

    .line 114
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string p2, "android.media.mediaparser.eagerlyExposeTrackType"

    .line 115
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string p2, "android.media.mediaparser.exposeDummySeekMap"

    .line 116
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string p2, "android.media.mediaParser.exposeChunkIndexAsMediaFormat"

    .line 117
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    const-string p2, "android.media.mediaParser.overrideInBandCaptionDeclarations"

    .line 118
    invoke-virtual {p1, p2, v2}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 120
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 122
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil;->toCaptionsMediaFormat(Landroidx/media3/common/Format;)Landroid/media/MediaFormat;

    move-result-object v0

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    const-string v0, "android.media.mediaParser.exposeCaptionFormats"

    .line 124
    invoke-virtual {p2, v0, p1}, Landroid/media/MediaParser;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Landroid/media/MediaParser;

    .line 125
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    .line 126
    invoke-static {p1, p4}, Landroidx/media3/exoplayer/source/mediaparser/MediaParserUtil;->setLogSessionIdOnMediaParser(Landroid/media/MediaParser;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 128
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setMuxedCaptionFormats(Ljava/util/List;)V

    .line 129
    new-instance p1, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->trackOutputProviderAdapter:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    .line 130
    new-instance p1, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Landroidx/media3/extractor/DummyTrackOutput;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    return-object p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/extractor/DummyTrackOutput;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->dummyTrackOutput:Landroidx/media3/extractor/DummyTrackOutput;

    return-object p0
.end method

.method static synthetic access$302(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;[Landroidx/media3/common/Format;)[Landroidx/media3/common/Format;
    .locals 0

    .line 54
    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Landroidx/media3/common/Format;

    return-object p1
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;)Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;
    .locals 0

    .line 54
    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    return-object p0
.end method

.method static synthetic lambda$static$0(ILandroidx/media3/common/Format;ZLjava/util/List;Landroidx/media3/extractor/TrackOutput;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/chunk/ChunkExtractor;
    .locals 0

    .line 66
    iget-object p2, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 68
    new-instance p2, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;

    invoke-direct {p2, p0, p1, p3, p5}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;-><init>(ILandroidx/media3/common/Format;Ljava/util/List;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private maybeExecutePendingSeek()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 172
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getDummySeekMap()Landroid/media/MediaParser$SeekMap;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    .line 174
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaParser$SeekPoint;

    invoke-virtual {v5, v0}, Landroid/media/MediaParser;->seek(Landroid/media/MediaParser$SeekPoint;)V

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    :cond_0
    return-void
.end method


# virtual methods
.method public getChunkIndex()Landroidx/media3/extractor/ChunkIndex;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 160
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getChunkIndex()Landroidx/media3/extractor/ChunkIndex;

    move-result-object p0

    return-object p0
.end method

.method public getSampleFormats()[Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->sampleFormats:[Landroidx/media3/common/Format;

    return-object p0
.end method

.method public init(Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->trackOutputProvider:Landroidx/media3/exoplayer/source/chunk/ChunkExtractor$TrackOutputProvider;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    .line 140
    invoke-virtual {p1, p4, p5}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setSampleTimestampUpperLimitFilterUs(J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->outputConsumerAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;

    iget-object p4, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->trackOutputProviderAdapter:Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;

    .line 141
    invoke-virtual {p1, p4}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->setExtractorOutput(Landroidx/media3/extractor/ExtractorOutput;)V

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->pendingSeekUs:J

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->maybeExecutePendingSeek()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 153
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;->setDataReader(Landroidx/media3/common/DataReader;J)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->inputReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/InputReaderAdapterV30;

    .line 154
    invoke-virtual {p1, p0}, Landroid/media/MediaParser;->advance(Landroid/media/MediaParser$SeekableInputReader;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/chunk/MediaParserChunkExtractor;->mediaParser:Landroid/media/MediaParser;

    .line 147
    invoke-virtual {p0}, Landroid/media/MediaParser;->release()V

    return-void
.end method
