.class public final Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;,
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;,
        Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$AdsLoaderProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DMediaSourceFactory"


# instance fields
.field private adViewProvider:Landroidx/media3/common/AdViewProvider;

.field private adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

.field private dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

.field private final delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field private liveMaxOffsetMs:J

.field private liveMaxSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinSpeed:F

.field private liveTargetOffsetMs:J

.field private loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

.field private serverSideAdInsertionMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private useProgressiveMediaSourceForSubtitles:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1

    .line 147
    new-instance v0, Landroidx/media3/datasource/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Landroidx/media3/datasource/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;)V
    .locals 1

    .line 161
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V
    .locals 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    .line 180
    new-instance v0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {v0, p2}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 181
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 101
    invoke-static {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 101
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createMediaSource$0(Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 490
    sget-object v1, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    invoke-interface {v1, p0}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    new-instance v1, Landroidx/media3/extractor/text/SubtitleExtractor;

    sget-object v2, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;

    .line 492
    invoke-interface {v2, p0}, Landroidx/media3/exoplayer/text/SubtitleDecoderFactory;->createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/text/SubtitleDecoder;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroidx/media3/extractor/text/SubtitleExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleDecoder;Landroidx/media3/common/Format;)V

    goto :goto_0

    .line 493
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;-><init>(Landroidx/media3/common/Format;)V

    :goto_0
    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0
.end method

.method private static maybeClipMediaSource(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 10

    .line 523
    iget-object v0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v0, v0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v0, :cond_0

    return-object p1

    .line 528
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource;

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 530
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v3

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 531
    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v5

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v1, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v7, v1, 0x1

    iget-object v1, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v8, v1, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->clippingConfiguration:Landroidx/media3/common/MediaItem$ClippingConfiguration;

    iget-boolean v9, p0, Landroidx/media3/common/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V

    return-object v0
.end method

.method private maybeWrapWithAdsMediaSource(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 9

    .line 538
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->adsConfiguration:Landroidx/media3/common/MediaItem$AdsConfiguration;

    if-nez v0, :cond_0

    return-object p2

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

    iget-object v8, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    const-string v2, "DMediaSourceFactory"

    if-eqz v1, :cond_4

    if-nez v8, :cond_1

    goto :goto_1

    .line 553
    :cond_1
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;->getAdsLoader(Landroidx/media3/common/MediaItem$AdsConfiguration;)Landroidx/media3/exoplayer/source/ads/AdsLoader;

    move-result-object v7

    if-nez v7, :cond_2

    const-string p0, "Playing media without ads, as no AdsLoader was provided."

    .line 555
    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 558
    :cond_2
    new-instance v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;

    new-instance v4, Landroidx/media3/datasource/DataSpec;

    iget-object v2, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-direct {v4, v2}, Landroidx/media3/datasource/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 561
    iget-object v2, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 562
    iget-object p1, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    goto :goto_0

    .line 563
    :cond_3
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->mediaId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-static {v2, p1, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    move-object v5, p1

    move-object v2, v1

    move-object v3, p2

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/ads/AdsLoader;Landroidx/media3/common/AdViewProvider;)V

    return-object v1

    :cond_4
    :goto_1
    const-string p0, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 547
    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private static newInstance(Ljava/lang/Class;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;)",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 766
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 768
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static newInstance(Ljava/lang/Class;Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;",
            ">;",
            "Landroidx/media3/datasource/DataSource$Factory;",
            ")",
            "Landroidx/media3/exoplayer/source/MediaSource$Factory;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 758
    const-class v1, Landroidx/media3/datasource/DataSource$Factory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 760
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public clearLocalAdInsertionComponents()Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    return-object p0
.end method

.method public createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;
    .locals 8

    .line 432
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ssai"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 435
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaSource$Factory;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0

    .line 438
    :cond_0
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v0, v0, Landroidx/media3/common/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 439
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 442
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getMediaSourceFactory(I)Landroidx/media3/exoplayer/source/MediaSource$Factory;

    move-result-object v1

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No suitable media source factory found for content type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    .line 447
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration;->buildUpon()Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    .line 448
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 449
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 451
    :cond_1
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v3, -0x800001

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 452
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 454
    :cond_2
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    .line 455
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 457
    :cond_3
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 458
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 460
    :cond_4
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Landroidx/media3/common/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    .line 461
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;

    .line 463
    :cond_5
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$LiveConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-result-object v0

    .line 465
    iget-object v2, p1, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 466
    invoke-virtual {p1}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/media3/common/MediaItem$Builder;->setLiveConfiguration(Landroidx/media3/common/MediaItem$LiveConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object p1

    .line 469
    :cond_6
    invoke-interface {v1, p1}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    .line 471
    iget-object v1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    .line 472
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object v1, v1, Landroidx/media3/common/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 473
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 474
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroidx/media3/exoplayer/source/MediaSource;

    const/4 v3, 0x0

    .line 475
    aput-object v0, v2, v3

    .line 476
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    if-eqz v0, :cond_8

    .line 478
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 480
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 481
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 482
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 483
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 484
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 485
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    .line 487
    new-instance v6, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/common/Format;)V

    .line 495
    new-instance v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    iget-object v7, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v0, v7, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;Landroidx/media3/extractor/ExtractorsFactory;)V

    iget-object v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v6, :cond_7

    .line 498
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;

    :cond_7
    add-int/lit8 v6, v3, 0x1

    .line 502
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/MediaItem;->fromUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object v7

    .line 501
    invoke-virtual {v0, v7}, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/ProgressiveMediaSource;

    move-result-object v0

    aput-object v0, v2, v6

    goto :goto_1

    .line 504
    :cond_8
    new-instance v0, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    iget-object v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    invoke-direct {v0, v6}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;-><init>(Landroidx/media3/datasource/DataSource$Factory;)V

    iget-object v6, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    if-eqz v6, :cond_9

    .line 507
    invoke-virtual {v0, v6}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;

    :cond_9
    add-int/lit8 v6, v3, 0x1

    .line 511
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    .line 510
    invoke-virtual {v0, v7, v4, v5}, Landroidx/media3/exoplayer/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem$SubtitleConfiguration;J)Landroidx/media3/exoplayer/source/SingleSampleMediaSource;

    move-result-object v0

    aput-object v0, v2, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 515
    :cond_a
    new-instance v0, Landroidx/media3/exoplayer/source/MergingMediaSource;

    invoke-direct {v0, v2}, Landroidx/media3/exoplayer/source/MergingMediaSource;-><init>([Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 517
    :cond_b
    invoke-static {p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->maybeClipMediaSource(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->maybeWrapWithAdsMediaSource(Landroidx/media3/common/MediaItem;Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method public experimentalUseProgressiveMediaSourceForSubtitles(Z)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    return-object p0
.end method

.method public getSupportedTypes()[I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 426
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getSupportedTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public setAdViewProvider(Landroidx/media3/common/AdViewProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    return-object p0
.end method

.method public setAdsLoaderProvider(Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

    return-object p0
.end method

.method public setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 390
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)V

    return-object p0
.end method

.method public bridge synthetic setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setCmcdConfigurationFactory(Landroidx/media3/exoplayer/upstream/CmcdConfiguration$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->dataSourceFactory:Landroidx/media3/datasource/DataSource$Factory;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 293
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDataSourceFactory(Landroidx/media3/datasource/DataSource$Factory;)V

    return-object p0
.end method

.method public setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 400
    invoke-static {p1, v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;

    .line 399
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)V

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Landroidx/media3/exoplayer/drm/DrmSessionManagerProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public setLiveMaxOffsetMs(J)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    return-object p0
.end method

.method public setLiveMaxSpeed(F)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    return-object p0
.end method

.method public setLiveMinSpeed(F)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 414
    invoke-static {p1, v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 419
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)V

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/MediaSource$Factory;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->setLoadErrorHandlingPolicy(Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;

    move-result-object p0

    return-object p0
.end method

.method public setLocalAdInsertionComponents(Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;Landroidx/media3/common/AdViewProvider;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    .line 262
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adsLoaderProvider:Landroidx/media3/exoplayer/source/ads/AdsLoader$Provider;

    .line 263
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/AdViewProvider;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    return-object p0
.end method

.method public setServerSideAdInsertionMediaSourceFactory(Landroidx/media3/exoplayer/source/MediaSource$Factory;)Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    return-object p0
.end method
