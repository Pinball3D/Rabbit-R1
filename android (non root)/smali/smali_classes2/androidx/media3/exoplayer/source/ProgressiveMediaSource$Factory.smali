.class public final Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 81
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V
    .locals 6

    .line 122
    new-instance v3, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v4, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Landroidx/media3/exoplayer/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput p5, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1

    .line 101
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroidx/media3/extractor/ExtractorsFactory;Landroidx/media3/exoplayer/analytics/PlayerId;)Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor;
    .locals 0

    .line 101
    new-instance p1, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;
    .locals 9

    .line 207
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 212
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;->get(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/drm/DrmSessionManager;

    move-result-object v5

    iget-object v6, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget v7, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource;-><init>(Landroidx/media3/common/MediaItem;Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;ILandroidx/media3/exoplayer/source/ProgressiveMediaSource$1;)V

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 0

    const/4 p0, 0x4

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 190
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 161
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method
