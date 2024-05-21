.class public final Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;
.super Lcom/google/android/exoplayer2/source/BaseMediaSource;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;,
        Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;
    }
.end annotation


# instance fields
.field private final adPlaybackStateUpdater:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

.field private adPlaybackStates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field

.field private contentTimeline:Lcom/google/android/exoplayer2/Timeline;

.field private final drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

.field private final mediaPeriods:Lcom/google/common/collect/ListMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ListMultimap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private final mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private playbackHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/BaseMediaSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStateUpdater:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    .line 131
    invoke-static {}, Lcom/google/common/collect/ArrayListMultimap;->create()Lcom/google/common/collect/ArrayListMultimap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 132
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 0

    .line 80
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodEndPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    return-object p0
.end method

.method private static correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;
    .locals 11

    .line 595
    new-instance v10, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v1, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iget v2, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v4, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iget-object v5, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    .line 601
    invoke-static {v6, v7, p0, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadDataPositionMs(JLcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    .line 603
    invoke-static {v8, v9, p0, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadDataPositionMs(JLcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v8

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-object v10
.end method

.method private static correctMediaLoadDataPositionMs(JLcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 611
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide p0

    .line 612
    iget-object p2, p2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 614
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 615
    iget v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p2, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-static {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForAd(JIILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    .line 619
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide p0

    .line 621
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static getMediaPeriodEndPositionUs(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J
    .locals 6

    .line 581
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 582
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 583
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p1

    .line 584
    iget v0, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->count:I

    if-ne v0, v1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->durationsUs:[J

    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    aget-wide p0, p1, p0

    :goto_0
    return-wide p0

    .line 586
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_2

    return-wide v2

    .line 589
    :cond_2
    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object p0

    .line 590
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long p1, v0, v4

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    :goto_1
    return-wide v2
.end method

.method private getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 559
    new-instance v1, Landroid/util/Pair;

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 560
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v1, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 561
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    if-eqz p3, :cond_3

    .line 565
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 566
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$100(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 567
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$100(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p0

    goto :goto_0

    .line 568
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    :goto_0
    return-object p0

    :cond_3
    const/4 p1, 0x0

    move p3, p1

    .line 570
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_5

    .line 571
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaLoadData;)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 576
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$200(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    return-object p0
.end method

.method private releaseLastUsedMediaPeriod()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 546
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->release(Lcom/google/android/exoplayer2/source/MediaSource;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    :cond_0
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 11

    .line 272
    new-instance v0, Landroid/util/Pair;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 275
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 277
    invoke-interface {v3, v0, v1}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 280
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->release(Lcom/google/android/exoplayer2/source/MediaSource;)V

    move-object v1, v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 287
    invoke-interface {v1, v0}, Lcom/google/common/collect/ListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    if-eqz v1, :cond_2

    .line 289
    invoke-virtual {v1, p1, p3, p4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->canReuseMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;J)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 292
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 293
    invoke-static {p3, p4, p1, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplayer2/source/MediaPeriodId;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)J

    move-result-wide v4

    .line 294
    new-instance v2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    new-instance v7, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v8, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-wide v9, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v7, v8, v9, v10}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 296
    invoke-interface {v6, v7, p2, v4, v5}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p2

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v2, p2, v4, v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;-><init>(Lcom/google/android/exoplayer2/source/MediaPeriod;Ljava/lang/Object;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 302
    invoke-interface {p2, v0, v2}, Lcom/google/common/collect/ListMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v1, v2

    .line 305
    :cond_3
    :goto_2
    new-instance p2, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object p0

    invoke-direct {p2, v1, p1, v0, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;-><init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    .line 308
    invoke-virtual {v1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->add(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V

    if-eqz v3, :cond_4

    .line 309
    iget-object p0, v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length p0, p0

    if-lez p0, :cond_4

    .line 310
    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->seekToUs(J)J

    :cond_4
    return-object p2
.end method

.method protected disableInternal()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->releaseLastUsedMediaPeriod()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 244
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    return-void
.end method

.method protected enableInternal()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 238
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    return-void
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 217
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->getMediaItem()Lcom/google/android/exoplayer2/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$setAdPlaybackStates$0$com-google-android-exoplayer2-source-ads-ServerSideAdInsertionMediaSource(Lcom/google/common/collect/ImmutableMap;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 190
    invoke-interface {v0}, Lcom/google/common/collect/ListMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 192
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v2, :cond_0

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->updateAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    if-eqz v0, :cond_2

    .line 200
    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->access$000(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 202
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->updateAdPlaybackState(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    if-eqz v0, :cond_3

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    invoke-direct {v0, v1, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_3
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 233
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    const/4 p1, 0x0

    .line 531
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 533
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 535
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {p2, p1, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onDownstreamFormatChanged(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 536
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 537
    invoke-static {p1, p3, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    .line 536
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :goto_0
    return-void
.end method

.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 352
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    goto :goto_0

    .line 357
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysLoaded()V

    :goto_0
    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 395
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRemoved()V

    :goto_0
    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 379
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 382
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmKeysRestored()V

    :goto_0
    return-void
.end method

.method public onDrmSessionAcquired(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 339
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 342
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionAcquired(I)V

    :goto_0
    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 366
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 369
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 371
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionManagerError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public onDrmSessionReleased(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, p2, p1, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->drmEventDispatcherWithoutId:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    .line 408
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    goto :goto_0

    .line 410
    :cond_0
    iget-object p0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;->drmSessionReleased()V

    :goto_0
    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    const/4 p1, 0x1

    .line 466
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 468
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 470
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadFinished(Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 471
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 476
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 473
    invoke-static {p1, p4, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    .line 471
    invoke-virtual {p2, p3, p0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :goto_0
    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    const/4 p1, 0x1

    .line 444
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 446
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadFinished(Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 449
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 454
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 451
    invoke-static {p1, p4, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    .line 449
    invoke-virtual {p2, p3, p0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :goto_0
    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 1

    const/4 p1, 0x1

    .line 490
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 492
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    goto :goto_0

    :cond_0
    if-eqz p6, :cond_1

    .line 496
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {p2, p3}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadFinished(Lcom/google/android/exoplayer2/source/LoadEventInfo;)V

    .line 498
    :cond_1
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 503
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 500
    invoke-static {p1, p4, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    .line 498
    invoke-virtual {p2, p3, p0, p5, p6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V

    :goto_0
    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    const/4 p1, 0x1

    .line 422
    invoke-direct {p0, p2, p4, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 424
    invoke-virtual {p0, p3, p4}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {p2, p3, p4}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onLoadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    .line 427
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 432
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 429
    invoke-static {p1, p4, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    .line 427
    invoke-virtual {p2, p3, p0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :goto_0
    return-void
.end method

.method public onSourceInfoRefreshed(Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 1

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStateUpdater:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;

    if-eqz p1, :cond_0

    .line 251
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$AdPlaybackStateUpdater;->onAdPlaybackStateUpdateRequested(Lcom/google/android/exoplayer2/Timeline;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 252
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 253
    new-instance p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p1, p2, v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_1
    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 1

    const/4 p1, 0x0

    .line 514
    invoke-direct {p0, p2, p3, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getMediaPeriodForEvent(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;Z)Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSourceEventDispatcherWithoutId:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 516
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    goto :goto_0

    .line 518
    :cond_0
    iget-object p2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 522
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 519
    invoke-static {p1, p3, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->correctMediaLoadData(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplayer2/source/MediaLoadData;Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;)Lcom/google/android/exoplayer2/source/MediaLoadData;

    move-result-object p0

    .line 518
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(Lcom/google/android/exoplayer2/source/MediaLoadData;)V

    :goto_0
    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    .line 222
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object v0

    .line 223
    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 226
    invoke-interface {v1, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 227
    invoke-interface {v1, v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 228
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->getPlayerId()Lcom/google/android/exoplayer2/analytics/PlayerId;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 4

    .line 317
    check-cast p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 318
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->remove(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V

    .line 319
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isUnused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 320
    new-instance v1, Landroid/util/Pair;

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    .line 322
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 320
    invoke-interface {v0, v1, v2}, Lcom/google/common/collect/ListMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaPeriods:Lcom/google/common/collect/ListMultimap;

    .line 325
    invoke-interface {v0}, Lcom/google/common/collect/ListMultimap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->lastUsedMediaPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->release(Lcom/google/android/exoplayer2/source/MediaSource;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 259
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->releaseLastUsedMediaPeriod()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->contentTimeline:Lcom/google/android/exoplayer2/Timeline;

    .line 261
    monitor-enter p0

    :try_start_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    .line 263
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 264
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 265
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 266
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V

    return-void

    :catchall_0
    move-exception v0

    .line 263
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setAdPlaybackStates(Lcom/google/common/collect/ImmutableMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;",
            ">;)V"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 154
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 157
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    .line 158
    iget-object v6, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adsId:Ljava/lang/Object;

    invoke-static {v0, v6}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    .line 159
    invoke-virtual {v6, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;

    if-eqz v5, :cond_0

    .line 161
    iget v6, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->removedAdGroupCount:I

    .line 162
    :goto_0
    iget v7, v4, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v6, v7, :cond_0

    .line 164
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v7

    .line 165
    iget-boolean v8, v7, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->isServerSideInserted:Z

    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 166
    iget v8, v5, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->adGroupCount:I

    if-ge v6, v8, :cond_3

    .line 167
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v8

    .line 168
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v9

    if-ge v8, v9, :cond_3

    add-int/lit8 v8, v6, 0x1

    .line 170
    invoke-virtual {v4, v8}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v8

    .line 171
    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    iget-wide v11, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v9, v11

    .line 173
    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;->getAdGroup(I)Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;

    move-result-object v11

    .line 174
    iget-wide v11, v11, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    move v9, v1

    goto :goto_1

    :cond_1
    move v9, v2

    :goto_1
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 175
    iget-wide v9, v7, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    iget-wide v11, v7, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->contentResumeOffsetUs:J

    add-long/2addr v9, v11

    iget-wide v11, v8, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    cmp-long v8, v9, v11

    if-nez v8, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 177
    :cond_3
    iget-wide v7, v7, Lcom/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup;->timeUs:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 179
    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionUtil;->getAdCountInGroup(Lcom/google/android/exoplayer2/source/ads/AdPlaybackState;I)I

    move-result v7

    if-nez v7, :cond_4

    move v7, v1

    goto :goto_3

    :cond_4
    move v7, v2

    .line 178
    :goto_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 184
    :cond_6
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->playbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_7

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    goto :goto_4

    .line 188
    :cond_7
    new-instance v1, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ads/ServerSideAdInsertionMediaSource;Lcom/google/common/collect/ImmutableMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
