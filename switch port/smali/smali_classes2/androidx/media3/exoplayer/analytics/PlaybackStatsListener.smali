.class public final Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;
.super Ljava/lang/Object;
.source "PlaybackStatsListener.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;
.implements Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$Callback;,
        Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;
    }
.end annotation


# instance fields
.field private audioFormat:Landroidx/media3/common/Format;

.field private bandwidthBytes:J

.field private bandwidthTimeMs:J

.field private final callback:Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$Callback;

.field private discontinuityFromPositionMs:J

.field private discontinuityFromSession:Ljava/lang/String;

.field private discontinuityReason:I

.field private droppedFrames:I

.field private finishedPlaybackStats:Landroidx/media3/exoplayer/analytics/PlaybackStats;

.field private final keepHistory:Z

.field private nonFatalException:Ljava/lang/Exception;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final playbackStatsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

.field private final sessionStartEventTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private videoFormat:Landroidx/media3/common/Format;

.field private videoSize:Landroidx/media3/common/VideoSize;


# direct methods
.method public constructor <init>(ZLandroidx/media3/exoplayer/analytics/PlaybackStatsListener$Callback;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->callback:Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$Callback;

    iput-boolean p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->keepHistory:Z

    .line 106
    new-instance p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;

    invoke-direct {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 107
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 108
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    .line 109
    sget-object p2, Landroidx/media3/exoplayer/analytics/PlaybackStats;->EMPTY:Landroidx/media3/exoplayer/analytics/PlaybackStats;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->finishedPlaybackStats:Landroidx/media3/exoplayer/analytics/PlaybackStats;

    .line 110
    new-instance p2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->period:Landroidx/media3/common/Timeline$Period;

    .line 111
    sget-object p2, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->videoSize:Landroidx/media3/common/VideoSize;

    .line 112
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->setListener(Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;)V

    return-void
.end method

.method private findBestEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;)Landroid/util/Pair;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v4

    .line 304
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 305
    invoke-virtual {v1, v4}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->get(I)I

    move-result v6

    .line 306
    invoke-virtual {v1, v6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v6

    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 307
    invoke-interface {v7, v6, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->belongsToSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v7

    if-eqz v3, :cond_1

    if-eqz v7, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    if-ne v7, v5, :cond_2

    .line 308
    iget-wide v8, v6, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v10, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    :cond_1
    move-object v3, v6

    move v5, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 317
    :cond_3
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_5

    .line 318
    iget-object v1, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_5

    iget-object v1, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->period:Landroidx/media3/common/Timeline$Period;

    .line 323
    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v1

    iget-object v4, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 324
    invoke-virtual {v1, v4}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->period:Landroidx/media3/common/Timeline$Period;

    .line 326
    iget-wide v4, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :cond_4
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->period:Landroidx/media3/common/Timeline$Period;

    .line 328
    invoke-virtual {v1}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 329
    new-instance v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v7, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v9, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget v10, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    new-instance v11, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v12, v12, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v14, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v14, v14, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v11, v6, v12, v13, v14}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 338
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v12

    iget-object v14, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget v15, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v4, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    iget-wide v2, v3, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-wide/from16 v17, v5

    move-object v6, v1

    move-object/from16 v16, v4

    move-wide/from16 v19, v2

    invoke-direct/range {v6 .. v20}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;-><init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    move-object/from16 v2, p2

    .line 344
    invoke-interface {v0, v1, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->belongsToSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result v5

    move-object v3, v1

    .line 346
    :cond_5
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z
    .locals 1

    .line 350
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 351
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->belongsToSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private maybeAddSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 4

    const/4 v0, 0x0

    .line 288
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 289
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->get(I)I

    move-result v1

    .line 290
    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v2

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 292
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->updateSessionsWithTimelineChange(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    goto :goto_1

    :cond_0
    const/16 v3, 0xb

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    iget v3, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityReason:I

    .line 294
    invoke-interface {v1, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->updateSessionsWithDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 296
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getCombinedPlaybackStats()Landroidx/media3/exoplayer/analytics/PlaybackStats;
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 124
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Landroidx/media3/exoplayer/analytics/PlaybackStats;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->finishedPlaybackStats:Landroidx/media3/exoplayer/analytics/PlaybackStats;

    const/4 v3, 0x0

    .line 125
    aput-object v2, v0, v3

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 127
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    add-int/lit8 v4, v1, 0x1

    .line 128
    invoke-virtual {v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v4

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->merge([Landroidx/media3/exoplayer/analytics/PlaybackStats;)Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-result-object p0

    return-object p0
.end method

.method public getPlaybackStats()Landroidx/media3/exoplayer/analytics/PlaybackStats;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 141
    invoke-interface {v0}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p0, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 144
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public onAdPlaybackStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 165
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onInterruptedByAd()V

    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    int-to-long p1, p2

    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->bandwidthTimeMs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->bandwidthBytes:J

    return-void
.end method

.method public onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 229
    iget p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackType:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 233
    iget-object p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->audioFormat:Landroidx/media3/common/Format;

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    iget-object p1, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->videoFormat:Landroidx/media3/common/Format;

    :cond_2
    :goto_1
    return-void
.end method

.method public onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    return-void
.end method

.method public onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->droppedFrames:I

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->size()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->maybeAddSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 248
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 249
    invoke-direct {v0, v1, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->findBestEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 250
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    const/16 v6, 0xb

    .line 251
    invoke-direct {v0, v1, v3, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v13

    const/16 v6, 0x3fa

    .line 252
    invoke-direct {v0, v1, v3, v6}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v6

    const/16 v8, 0x3f3

    .line 253
    invoke-direct {v0, v1, v3, v8}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v15

    const/16 v8, 0x3e8

    .line 254
    invoke-direct {v0, v1, v3, v8}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v16

    const/16 v8, 0xa

    .line 255
    invoke-direct {v0, v1, v3, v8}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v8

    const/16 v9, 0x3eb

    .line 257
    invoke-direct {v0, v1, v3, v9}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_2

    const/16 v9, 0x400

    .line 258
    invoke-direct {v0, v1, v3, v9}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v9, 0x1

    :goto_2
    const/16 v11, 0x3ee

    .line 259
    invoke-direct {v0, v1, v3, v11}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v11

    const/16 v12, 0x3ec

    .line 260
    invoke-direct {v0, v1, v3, v12}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v12

    const/16 v14, 0x19

    .line 261
    invoke-direct {v0, v1, v3, v14}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->hasEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;Ljava/lang/String;I)Z

    move-result v14

    .line 262
    iget-object v10, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    .line 265
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v4, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    .line 266
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v3, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    goto :goto_3

    :cond_3
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-eqz v6, :cond_4

    iget v6, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->droppedFrames:I

    move/from16 v17, v6

    goto :goto_4

    :cond_4
    const/16 v17, 0x0

    :goto_4
    if-eqz v8, :cond_5

    .line 271
    invoke-interface/range {p1 .. p1}, Landroidx/media3/common/Player;->getPlayerError()Landroidx/media3/common/PlaybackException;

    move-result-object v6

    goto :goto_5

    :cond_5
    const/4 v6, 0x0

    :goto_5
    if-eqz v9, :cond_6

    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    move-object/from16 v19, v8

    goto :goto_6

    :cond_6
    const/16 v19, 0x0

    :goto_6
    if-eqz v11, :cond_7

    iget-wide v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->bandwidthTimeMs:J

    move-wide/from16 v22, v8

    goto :goto_7

    :cond_7
    const-wide/16 v22, 0x0

    :goto_7
    if-eqz v11, :cond_8

    iget-wide v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->bandwidthBytes:J

    move-wide/from16 v24, v8

    goto :goto_8

    :cond_8
    const-wide/16 v24, 0x0

    :goto_8
    if-eqz v12, :cond_9

    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->videoFormat:Landroidx/media3/common/Format;

    move-object/from16 v26, v8

    goto :goto_9

    :cond_9
    const/16 v26, 0x0

    :goto_9
    if-eqz v12, :cond_a

    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->audioFormat:Landroidx/media3/common/Format;

    move-object/from16 v27, v8

    goto :goto_a

    :cond_a
    const/16 v27, 0x0

    :goto_a
    if-eqz v14, :cond_b

    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->videoSize:Landroidx/media3/common/VideoSize;

    move-object/from16 v28, v8

    goto :goto_b

    :cond_b
    const/16 v28, 0x0

    :goto_b
    move-object/from16 v8, p1

    move-object v9, v10

    move v10, v5

    move-wide v11, v3

    move/from16 v14, v17

    move-object/from16 v17, v6

    move-object/from16 v18, v19

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move-object/from16 v23, v26

    move-object/from16 v24, v27

    move-object/from16 v25, v28

    .line 262
    invoke-virtual/range {v7 .. v25}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZJZIZZLandroidx/media3/common/PlaybackException;Ljava/lang/Exception;JJLandroidx/media3/common/Format;Landroidx/media3/common/Format;Landroidx/media3/common/VideoSize;)V

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    iput-object v3, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->videoFormat:Landroidx/media3/common/Format;

    iput-object v3, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->audioFormat:Landroidx/media3/common/Format;

    iput-object v3, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    const/16 v2, 0x404

    .line 282
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 283
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;->getEventTime(I)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->finishAllSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    :cond_d
    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    iput-object p4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->nonFatalException:Ljava/lang/Exception;

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionManager:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;

    .line 194
    invoke-interface {p1}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;->getActiveSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    .line 195
    iget-wide p1, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    :cond_0
    iput p4, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityReason:I

    return-void
.end method

.method public onSessionActive(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 159
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onForeground()V

    return-void
.end method

.method public onSessionCreated(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    iget-boolean v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->keepHistory:Z

    invoke-direct {v0, v1, p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;-><init>(ZLandroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 153
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    .line 154
    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->playbackStatsTrackers:Ljava/util/Map;

    .line 171
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->sessionStartEventTimes:Ljava/util/Map;

    .line 172
    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromSession:Ljava/lang/String;

    .line 174
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->discontinuityFromPositionMs:J

    goto :goto_0

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    :goto_0
    invoke-virtual {v0, p1, p3, v2, v3}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->onFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZJ)V

    const/4 p1, 0x1

    .line 178
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$PlaybackStatsTracker;->build(Z)Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Landroidx/media3/exoplayer/analytics/PlaybackStats;

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->finishedPlaybackStats:Landroidx/media3/exoplayer/analytics/PlaybackStats;

    aput-object v2, p3, v0

    aput-object p2, p3, p1

    .line 179
    invoke-static {p3}, Landroidx/media3/exoplayer/analytics/PlaybackStats;->merge([Landroidx/media3/exoplayer/analytics/PlaybackStats;)Landroidx/media3/exoplayer/analytics/PlaybackStats;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->finishedPlaybackStats:Landroidx/media3/exoplayer/analytics/PlaybackStats;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->callback:Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$Callback;

    if-eqz p0, :cond_1

    .line 181
    invoke-interface {p0, v1, p2}, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener$Callback;->onPlaybackStatsReady(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/PlaybackStats;)V

    :cond_1
    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 0

    iput-object p2, p0, Landroidx/media3/exoplayer/analytics/PlaybackStatsListener;->videoSize:Landroidx/media3/common/VideoSize;

    return-void
.end method
