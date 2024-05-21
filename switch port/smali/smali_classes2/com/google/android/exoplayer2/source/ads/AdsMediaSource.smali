.class public final Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdPrepareListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;,
        Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdLoadException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field private final adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

.field private adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

.field private adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

.field private final adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

.field private final adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

.field private final adsId:Ljava/lang/Object;

.field private final adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

.field private componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

.field private final contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final mainHandler:Landroid/os/Handler;

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$Factory;Lcom/google/android/exoplayer2/source/ads/AdsLoader;Lcom/google/android/exoplayer2/ui/AdViewProvider;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    .line 173
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 174
    new-instance p1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    const/4 p1, 0x0

    new-array p1, p1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 176
    invoke-interface {p4}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->getSupportedTypes()[I

    move-result-object p0

    invoke-interface {p5, p0}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->setSupportedContentTypes([I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Landroid/os/Handler;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/source/ads/AdsLoader;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Ljava/lang/Object;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->releaseChildSource(Ljava/lang/Object;)V

    return-void
.end method

.method private getAdDurationsUs()[[J
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 345
    array-length v0, v0

    new-array v0, v0, [[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 346
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 347
    aget-object v3, v3, v2

    array-length v3, v3

    new-array v3, v3, [J

    aput-object v3, v0, v2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 348
    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 349
    aget-object v4, v4, v3

    .line 350
    aget-object v5, v0, v2

    if-nez v4, :cond_0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_2

    :cond_0
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->getDurationUs()J

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 303
    array-length v3, v3

    if-ge v2, v3, :cond_4

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 305
    aget-object v4, v4, v2

    array-length v5, v4

    if-ge v3, v5, :cond_3

    .line 308
    aget-object v4, v4, v3

    .line 310
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v5

    if-eqz v4, :cond_2

    .line 312
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->hasMediaSource()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 314
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->uris:[Landroid/net/Uri;

    aget-object v5, v5, v3

    if-eqz v5, :cond_2

    .line 316
    new-instance v6, Lcom/google/android/exoplayer2/MediaItem$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 320
    invoke-interface {v7}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem;->localConfiguration:Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;

    if-eqz v7, :cond_1

    .line 322
    iget-object v7, v7, Lcom/google/android/exoplayer2/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplayer2/MediaItem$Builder;->setDrmConfiguration(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)Lcom/google/android/exoplayer2/MediaItem$Builder;

    :cond_1
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceFactory:Lcom/google/android/exoplayer2/source/MediaSource$Factory;

    .line 324
    invoke-virtual {v6}, Lcom/google/android/exoplayer2/MediaItem$Builder;->build()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v6

    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplayer2/MediaItem;)Lcom/google/android/exoplayer2/source/MediaSource;

    move-result-object v6

    .line 325
    invoke-virtual {v4, v6, v5}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->initializeWithMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;Landroid/net/Uri;)V

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 335
    iget v1, v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-nez v1, :cond_0

    .line 336
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getAdDurationsUs()[[J

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->withAdDurationsUs([[J)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 339
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-direct {v1, v0, v2}, Lcom/google/android/exoplayer2/source/ads/SinglePeriodAdTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    new-array v0, v0, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    new-array v1, v1, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 285
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget v2, v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 290
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 291
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 202
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 203
    iget v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 205
    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 206
    aget-object v3, v2, v0

    array-length v4, v3

    if-gt v4, v1, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 209
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    aput-object v3, v2, v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 212
    aget-object v2, v2, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 215
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 216
    aget-object v0, v3, v0

    aput-object v2, v0, v1

    .line 217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateAdMediaSources()V

    .line 219
    :cond_1
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->createMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p0

    return-object p0

    .line 221
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 222
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V

    .line 223
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    return-object v0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 181
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 277
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 61
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$prepareSourceInternal$0$com-google-android-exoplayer2-source-ads-AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adTagDataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsId:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adViewProvider:Lcom/google/android/exoplayer2/ui/AdViewProvider;

    move-object v1, p0

    move-object v5, p1

    .line 192
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->start(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplayer2/ui/AdViewProvider;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method synthetic lambda$releaseSourceInternal$1$com-google-android-exoplayer2-source-ads-AdsMediaSource(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adsLoader:Lcom/google/android/exoplayer2/source/ads/AdsLoader;

    .line 254
    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsLoader;->stop(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method protected onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 1

    .line 260
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 261
    iget p2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 262
    iget p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 263
    aget-object p2, v0, p2

    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 264
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->handleSourceInfoRefresh(Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_1

    .line 266
    :cond_0
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 269
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->maybeUpdateSourceInfo()V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 61
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->onChildSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    .line 186
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 187
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    sget-object v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->CHILD_SOURCE_MEDIA_PERIOD_ID:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentMediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 189
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 190
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 3

    .line 230
    check-cast p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    .line 231
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 233
    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object v1, v1, v2

    iget v2, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-object v1, v1, v2

    .line 234
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 235
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->releaseMediaPeriod(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;)V

    .line 236
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->isInactive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;->release()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    .line 238
    iget p1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    aget-object p0, p0, p1

    iget p1, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    const/4 v0, 0x0

    aput-object v0, p0, p1

    goto :goto_0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->releasePeriod()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 3

    .line 247
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 248
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->componentListener:Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;

    .line 250
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;->stop()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adPlaybackState:Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    const/4 v1, 0x0

    new-array v1, v1, [[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->adMediaSourceHolders:[[Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$AdMediaSourceHolder;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;->mainHandler:Landroid/os/Handler;

    .line 254
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/AdsMediaSource;Lcom/google/android/exoplayer2/source/ads/AdsMediaSource$ComponentListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
