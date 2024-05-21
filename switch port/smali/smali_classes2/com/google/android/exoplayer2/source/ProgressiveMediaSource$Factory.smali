.class public final Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 81
    new-instance v0, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;)V
    .locals 6

    .line 122
    new-instance v3, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v4, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;I)V
    .locals 0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput p5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;Lcom/google/android/exoplayer2/analytics/PlayerId;)Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor;
    .locals 0

    .line 101
    new-instance p1, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/BundledExtractorsAdapter;-><init>(Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    move-result-object p0

    return-object p0
.end method

.method public createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;
    .locals 8

    .line 207
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 209
    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 214
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 216
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem;->buildUpon()Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p1

    :cond_4
    :goto_2
    move-object v1, p1

    .line 218
    new-instance p1, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    .line 222
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget v6, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/upstream/DataSource$Factory;Lcom/google/android/exoplayer2/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;ILcom/google/android/exoplayer2/source/ProgressiveMediaSource$1;)V

    return-object p1
.end method

.method public getSupportedTypes()[I
    .locals 0

    const/4 p0, 0x4

    filled-new-array {p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 190
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplayer2/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 161
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method
