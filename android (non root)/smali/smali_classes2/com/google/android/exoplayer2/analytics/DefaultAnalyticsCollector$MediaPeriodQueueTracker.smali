.class final Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodQueueTracker"
.end annotation


# instance fields
.field private currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Lcom/google/android/exoplayer2/Timeline$Period;

.field private playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline$Period;)V
    .locals 0

    .line 1033
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1035
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1036
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1021
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method private addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 1150
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1151
    invoke-virtual {p1, p2, p3}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    .line 1153
    invoke-virtual {p0, p2}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/Timeline;

    if-eqz p0, :cond_2

    .line 1155
    invoke-virtual {p1, p2, p0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_2
    :goto_0
    return-void
.end method

.method private static findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Player;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Timeline$Period;",
            ")",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;"
        }
    .end annotation

    .line 1166
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    .line 1167
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPeriodIndex()I

    move-result v1

    .line 1170
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v2

    .line 1172
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1175
    :cond_1
    invoke-virtual {v0, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object v0

    .line 1177
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentPosition()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 1176
    invoke-virtual {v0, v4, v5}, Lcom/google/android/exoplayer2/Timeline$Period;->getAdGroupIndexAfterPositionUs(J)I

    move-result p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p3, -0x1

    :goto_2
    const/4 v0, 0x0

    .line 1178
    :goto_3
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1179
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1183
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v6

    .line 1184
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1185
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, v1

    move-object v5, v2

    move v9, p3

    .line 1180
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1190
    :cond_4
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1194
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->isPlayingAd()Z

    move-result v6

    .line 1195
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdGroupIndex()I

    move-result v7

    .line 1196
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Player;->getCurrentAdIndexInAdGroup()I

    move-result v8

    move-object v4, p2

    move-object v5, v2

    move v9, p3

    .line 1191
    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->isMatchingMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object p2

    :cond_5
    return-object v3
.end method

.method private static isMatchingMediaPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Object;ZIII)Z
    .locals 1

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 1215
    iget p1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne p1, p3, :cond_1

    iget p1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq p1, p4, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget p1, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget p0, p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-ne p0, p5, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private updateMediaPeriodTimelines(Lcom/google/android/exoplayer2/Timeline;)V
    .locals 3

    .line 1122
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1123
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1124
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1125
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1126
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1128
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1129
    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1130
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1133
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1134
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1136
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1137
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->addTimelineForMediaPeriodId(Lcom/google/common/collect/ImmutableMap$Builder;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)V

    .line 1140
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->buildOrThrow()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public getCurrentPlayerMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object p0
.end method

.method public getLoadingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1080
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :goto_0
    return-object p0
.end method

.method public getMediaPeriodIdTimeline(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodTimelines:Lcom/google/common/collect/ImmutableMap;

    .line 1089
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/Timeline;

    return-object p0
.end method

.method public getPlayingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object p0
.end method

.method public getReadingMediaPeriod()Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object p0
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplayer2/Player;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1095
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public onQueueUpdated(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Player;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "Lcom/google/android/exoplayer2/Player;",
            ")V"
        }
    .end annotation

    .line 1108
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    .line 1109
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1110
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1111
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->readingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object p2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1115
    invoke-static {p3, p1, p2, v0}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1118
    :cond_1
    invoke-interface {p3}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplayer2/Player;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->mediaPeriodQueue:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->playingMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->period:Lcom/google/android/exoplayer2/Timeline$Period;

    .line 1101
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->findCurrentPlayerMediaPeriodInQueue(Lcom/google/android/exoplayer2/Player;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->currentPlayerMediaPeriod:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 1102
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Player;->getCurrentTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->updateMediaPeriodTimelines(Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method
