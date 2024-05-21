.class public final Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;,
        Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;,
        Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdPrepareListener;,
        Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;


# instance fields
.field private final adMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

.field private adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

.field private adPlaybackState:Landroidx/media3/common/AdPlaybackState;

.field private final adTagDataSpec:Landroidx/media3/datasource/DataSpec;

.field private final adViewProvider:Landroidx/media3/common/AdViewProvider;

.field private final adsId:Ljava/lang/Object;

.field private final adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

.field private componentListener:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

.field final contentDrmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

.field private final contentMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private contentTimeline:Landroidx/media3/common/Timeline;

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Landroidx/media3/common/Timeline$Period;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 131
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$Factory;Landroidx/media3/exoplayer/source/ads/AdsLoader;Landroidx/media3/common/AdViewProvider;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 173
    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p1

    iget-object p1, p1, Landroidx/media3/common/MediaItem;->localConfiguration:Landroidx/media3/common/MediaItem$LocalConfiguration;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/common/MediaItem$LocalConfiguration;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$LocalConfiguration;->drmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentDrmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    iput-object p6, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adTagDataSpec:Landroidx/media3/datasource/DataSpec;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    .line 179
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 180
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    const/4 p1, 0x0

    new-array p1, p1, [[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 182
    invoke-interface {p4}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->getSupportedTypes()[I

    move-result-object p0

    invoke-interface {p5, p0}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->createEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/common/AdPlaybackState;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->createEventDispatcher(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroidx/media3/exoplayer/source/ads/AdsLoader;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)Landroidx/media3/common/Timeline$Period;
    .locals 0

    .line 64
    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->period:Landroidx/media3/common/Timeline$Period;

    return-object p0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Ljava/lang/Object;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method private getAdDurationsUs()[[J
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 348
    array-length v0, v0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 349
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 350
    aget-object v3, v3, v2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 351
    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 352
    aget-object v4, v4, v3

    .line 353
    aget-object v5, v0, v2

    if-nez v4, :cond_0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

    move-result-wide v6

    :goto_2
    aput-wide v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private maybeUpdateAdMediaSources()V
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 309
    array-length v3, v3

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_1
    iget-object v4, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 311
    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 314
    aget-object v4, v4, v3

    .line 316
    invoke-virtual {v0, v2}, Landroidx/media3/common/AdPlaybackState;->getAdGroup(I)Landroidx/media3/common/AdPlaybackState$AdGroup;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 318
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 320
    iget-object v5, v5, Landroidx/media3/common/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 322
    new-instance v6, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v6}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    invoke-virtual {v6, v5}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v6

    iget-object v7, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentDrmConfiguration:Landroidx/media3/common/MediaItem$DrmConfiguration;

    if-eqz v7, :cond_1

    .line 325
    invoke-virtual {v6, v7}, Landroidx/media3/common/MediaItem$Builder;->setDrmConfiguration(Landroidx/media3/common/MediaItem$DrmConfiguration;)Landroidx/media3/common/MediaItem$Builder;

    :cond_1
    iget-object v7, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceFactory:Landroidx/media3/exoplayer/source/MediaSource$Factory;

    .line 327
    invoke-virtual {v6}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v6

    invoke-interface {v7, v6}, Landroidx/media3/exoplayer/source/MediaSource$Factory;->createMediaSource(Landroidx/media3/common/MediaItem;)Landroidx/media3/exoplayer/source/MediaSource;

    move-result-object v6

    .line 328
    invoke-virtual {v4, v6, v5}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->initializeWithMediaSource(Landroidx/media3/exoplayer/source/MediaSource;Landroid/net/Uri;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private maybeUpdateSourceInfo()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 338
    iget v1, v1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 341
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getAdDurationsUs()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/AdPlaybackState;->withAdDurationsUs([[J)Landroidx/media3/common/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 342
    new-instance v1, Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Landroidx/media3/exoplayer/source/ads/SinglePeriodAdTimeline;-><init>(Landroidx/media3/common/Timeline;Landroidx/media3/common/AdPlaybackState;)V

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onAdPlaybackState(Landroidx/media3/common/AdPlaybackState;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 290
    iget v0, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    new-array v1, v1, [Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 291
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 293
    :cond_0
    iget v0, p1, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    iget v2, v2, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 296
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 297
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    .line 208
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/AdPlaybackState;

    .line 209
    iget v0, v0, Landroidx/media3/common/AdPlaybackState;->adGroupCount:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 211
    iget v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 212
    aget-object v3, v2, v0

    array-length v4, v3

    if-gt v4, v1, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 215
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aput-object v3, v2, v0

    :cond_0
    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 218
    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 221
    new-instance v2, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-direct {v2, p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 222
    aget-object v0, v3, v0

    aput-object v2, v0, v1

    .line 223
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 225
    :cond_1
    invoke-virtual {v2, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p0

    return-object p0

    .line 227
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 228
    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 229
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 187
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaSource;->getMediaItem()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 283
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 63
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$prepareSourceInternal$0$androidx-media3-exoplayer-source-ads-AdsMediaSource(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 6

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adTagDataSpec:Landroidx/media3/datasource/DataSpec;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adViewProvider:Landroidx/media3/common/AdViewProvider;

    move-object v1, p0

    move-object v5, p1

    .line 198
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->start(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/datasource/DataSpec;Ljava/lang/Object;Landroidx/media3/common/AdViewProvider;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method synthetic lambda$releaseSourceInternal$1$androidx-media3-exoplayer-source-ads-AdsMediaSource(Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adsLoader:Landroidx/media3/exoplayer/source/ads/AdsLoader;

    .line 260
    invoke-interface {v0, p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsLoader;->stop(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 1

    .line 266
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 267
    iget p2, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 268
    iget p1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 269
    aget-object p2, v0, p2

    aget-object p1, p2, p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 270
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Landroidx/media3/common/Timeline;)V

    goto :goto_1

    .line 272
    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p3, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    .line 275
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 63
    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 193
    new-instance p1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->componentListener:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    sget-object v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentMediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 195
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 196
    new-instance v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 3

    .line 236
    check-cast p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    .line 237
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 238
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 239
    iget v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v1, v1, v2

    iget v2, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v1, v1, v2

    .line 240
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 241
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Landroidx/media3/exoplayer/source/MaskingMediaPeriod;)V

    .line 242
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 243
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;->release()V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 244
    iget p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object p0, p0, p1

    iget p1, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    const/4 v0, 0x0

    aput-object v0, p0, p1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->releasePeriod()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 3

    .line 253
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->componentListener:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    .line 254
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->componentListener:Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;

    .line 256
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;->stop()V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->contentTimeline:Landroidx/media3/common/Timeline;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adPlaybackState:Landroidx/media3/common/AdPlaybackState;

    const/4 v1, 0x0

    new-array v1, v1, [[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 260
    new-instance v2, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/source/ads/AdsMediaSource;Landroidx/media3/exoplayer/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
