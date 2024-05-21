.class public Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;
.super Ljava/lang/Object;
.source "DefaultAnalyticsCollector.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;
    }
.end annotation


# instance fields
.field private final clock:Landroidx/media3/common/util/Clock;

.field private final eventTimes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroidx/media3/common/util/HandlerWrapper;

.field private isSeeking:Z

.field private listeners:Landroidx/media3/common/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/util/ListenerSet<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private player:Landroidx/media3/common/Player;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$DN4l2kv51WFx7GoN5Fyqar44Kyg(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->releaseInternal()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/Clock;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    .line 92
    new-instance v0, Landroidx/media3/common/util/ListenerSet;

    invoke-static {}, Landroidx/media3/common/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda12;-><init>()V

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/common/util/ListenerSet;-><init>(Landroid/os/Looper;Landroidx/media3/common/util/Clock;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 93
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Landroidx/media3/common/Timeline$Period;

    .line 94
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->window:Landroidx/media3/common/Timeline$Window;

    .line 95
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;-><init>(Landroidx/media3/common/Timeline$Period;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 96
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    return-void
.end method

.method private generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 945
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 950
    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/common/Timeline;

    move-result-object v1

    :goto_0
    if-eqz p1, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    .line 958
    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v1, v0, v2}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 959
    invoke-virtual {p0, v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 952
    invoke-interface {p1}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result p1

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 953
    invoke-interface {v1}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v1

    .line 954
    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v2

    if-ge p1, v2, :cond_3

    goto :goto_2

    .line 956
    :cond_3
    sget-object v1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    .line 955
    :goto_2
    invoke-virtual {p0, v1, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method private generateLoadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 971
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getLoadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method private generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 976
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 979
    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getMediaPeriodIdTimeline(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/common/Timeline;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    goto :goto_0

    .line 982
    :cond_0
    sget-object v0, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    iget-object p2, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 984
    invoke-interface {p2}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object p2

    .line 985
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_1

    .line 987
    :cond_2
    sget-object p2, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    :goto_1
    const/4 v0, 0x0

    .line 986
    invoke-virtual {p0, p2, p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method private generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 963
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getPlayingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method private generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 967
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getReadingMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method private getEventTimeForErrorEvent(Landroidx/media3/common/PlaybackException;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    .line 991
    instance-of v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    if-eqz v0, :cond_0

    .line 992
    check-cast p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 993
    iget-object v0, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    if-eqz v0, :cond_0

    .line 994
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Landroidx/media3/common/MediaPeriodId;)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0

    .line 997
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$notifySeekStarted$2(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 162
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSeekStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onAudioAttributesChanged$55(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 738
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioAttributesChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$onAudioCodecError$11(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 263
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderInitialized$4(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 7

    .line 188
    invoke-interface {p6, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 189
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic lambda$onAudioDecoderReleased$8(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 234
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAudioDisabled$9(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 244
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioEnabled$3(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 175
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onAudioInputFormatChanged$5(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 203
    invoke-interface {p3, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 204
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method static synthetic lambda$onAudioPositionAdvancing$6(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 214
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioPositionAdvancing(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onAudioSessionIdChanged$54(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 729
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioSessionIdChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onAudioSinkError$10(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 254
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioSinkError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onAudioUnderrun$7(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 225
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onAvailableCommandsChanged$33(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 520
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onAvailableCommandsChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V

    return-void
.end method

.method static synthetic lambda$onBandwidthSample$60(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 7

    move-object v0, p6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 806
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method static synthetic lambda$onCues$51(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 704
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$52(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 711
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onCues(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onDeviceInfoChanged$58(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 774
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDeviceInfoChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onDeviceVolumeChanged$59(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 783
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDeviceVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method static synthetic lambda$onDownstreamFormatChanged$28(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 457
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysLoaded$62(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 831
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRemoved$65(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 859
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmKeysRestored$64(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 850
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionAcquired$61(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 820
    invoke-interface {p2, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 821
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionManagerError$63(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 841
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onDrmSessionReleased$66(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 868
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDrmSessionReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method static synthetic lambda$onDroppedFrames$16(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 323
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    return-void
.end method

.method static synthetic lambda$onIsLoadingChanged$32(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 509
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    .line 510
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onIsPlayingChanged$38(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 569
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onIsPlayingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadCanceled$25(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 421
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadCanceled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadCompleted$24(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 408
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadCompleted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onLoadError$26(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 6

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 437
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method static synthetic lambda$onLoadStarted$23(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 395
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onMaxSeekToPreviousPositionChanged$47(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 669
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMaxSeekToPreviousPositionChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onMediaItemTransition$30(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 483
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMediaItemTransition(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$onMediaMetadataChanged$48(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 678
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMediaMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$50(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 696
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onPlayWhenReadyChanged$36(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 549
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaybackParametersChanged$44(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 641
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method static synthetic lambda$onPlaybackStateChanged$35(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 539
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlaybackSuppressionReasonChanged$37(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 560
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaybackSuppressionReasonChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onPlayerError$41(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 596
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerErrorChanged$42(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 605
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerErrorChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$onPlayerStateChanged$34(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 530
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method static synthetic lambda$onPlaylistMetadataChanged$49(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 687
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlaylistMetadataChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$onPositionDiscontinuity$43(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 630
    invoke-interface {p4, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    .line 631
    invoke-interface {p4, p0, p2, p3, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$onRenderedFirstFrame$19(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 352
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method static synthetic lambda$onRepeatModeChanged$39(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 578
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onSeekBackIncrementChanged$45(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 650
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSeekBackIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onSeekForwardIncrementChanged$46(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 659
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSeekForwardIncrementChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method static synthetic lambda$onShuffleModeEnabledChanged$40(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 587
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$53(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 720
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method static synthetic lambda$onSurfaceSizeChanged$22(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 380
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onSurfaceSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method static synthetic lambda$onTimelineChanged$29(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 473
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method static synthetic lambda$onTrackSelectionParametersChanged$57(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 765
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onTrackSelectionParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$onTracksChanged$31(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 492
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onTracksChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V

    return-void
.end method

.method static synthetic lambda$onUpstreamDiscarded$27(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 447
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onUpstreamDiscarded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method

.method static synthetic lambda$onVideoCodecError$21(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 371
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoCodecError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderInitialized$14(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 7

    .line 297
    invoke-interface {p6, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    move-object v0, p6

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    .line 298
    invoke-interface/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method static synthetic lambda$onVideoDecoderReleased$17(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 332
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onVideoDisabled$18(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 342
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoEnabled$13(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 284
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method static synthetic lambda$onVideoFrameProcessingOffset$20(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JILandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 362
    invoke-interface {p4, p0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoFrameProcessingOffset(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method static synthetic lambda$onVideoInputFormatChanged$15(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 312
    invoke-interface {p3, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;)V

    .line 313
    invoke-interface {p3, p0, p1, p2}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$56(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 6

    .line 749
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V

    .line 750
    iget v2, p1, Landroidx/media3/common/VideoSize;->width:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->height:I

    iget v4, p1, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iget v5, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    move-object v0, p2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method static synthetic lambda$onVolumeChanged$12(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;FLandroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 272
    invoke-interface {p2, p0, p1}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method static synthetic lambda$releaseInternal$67(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 940
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onPlayerReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method private releaseInternal()V
    .locals 3

    .line 936
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 937
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda32;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 941
    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->release()V

    return-void
.end method


# virtual methods
.method public addListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    .line 116
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 117
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method protected final generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 889
    invoke-virtual {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateEventTime(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p0

    return-object p0
.end method

.method protected final generateEventTime(Landroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "player"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    .line 896
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    iget-object v1, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    .line 900
    invoke-interface {v1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 903
    invoke-interface {v6}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroidx/media3/common/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 904
    invoke-interface {v6}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v6

    if-ne v4, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-wide/16 v7, 0x0

    if-eqz v5, :cond_2

    .line 905
    invoke-virtual {v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_5

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 908
    invoke-interface {v6}, Landroidx/media3/common/Player;->getCurrentAdGroupIndex()I

    move-result v6

    iget v9, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v6, v9, :cond_5

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 909
    invoke-interface {v6}, Landroidx/media3/common/Player;->getCurrentAdIndexInAdGroup()I

    move-result v6

    iget v9, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v6, v9, :cond_5

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 911
    invoke-interface {v6}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v7

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 913
    invoke-interface {v6}, Landroidx/media3/common/Player;->getContentPosition()J

    move-result-wide v6

    goto :goto_3

    .line 918
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v3, v4, v6}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v7

    :cond_5
    :goto_2
    move-wide v6, v7

    :goto_3
    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 921
    invoke-virtual {v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->getCurrentPlayerMediaPeriod()Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v10

    .line 922
    new-instance v15, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 928
    invoke-interface {v8}, Landroidx/media3/common/Player;->getCurrentTimeline()Landroidx/media3/common/Timeline;

    move-result-object v8

    iget-object v9, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 929
    invoke-interface {v9}, Landroidx/media3/common/Player;->getCurrentMediaItemIndex()I

    move-result v9

    iget-object v11, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 931
    invoke-interface {v11}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v11

    iget-object v0, v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 932
    invoke-interface {v0}, Landroidx/media3/common/Player;->getTotalBufferedDuration()J

    move-result-wide v13

    move-object v0, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v14}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;-><init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V

    return-object v15
.end method

.method synthetic lambda$setPlayer$1$androidx-media3-exoplayer-analytics-DefaultAnalyticsCollector(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener;Landroidx/media3/common/FlagSet;)V
    .locals 1

    .line 136
    new-instance v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    invoke-direct {v0, p3, p0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;-><init>(Landroidx/media3/common/FlagSet;Landroid/util/SparseArray;)V

    invoke-interface {p2, p1, v0}, Landroidx/media3/exoplayer/analytics/AnalyticsListener;->onEvents(Landroidx/media3/common/Player;Landroidx/media3/exoplayer/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public final notifySeekStarted()V
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    .line 161
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda60;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public final onAudioAttributesChanged(Landroidx/media3/common/AudioAttributes;)V
    .locals 2

    .line 734
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 735
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda57;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioCodecError(Ljava/lang/Exception;)V
    .locals 2

    .line 259
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 260
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda26;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x405

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 183
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 184
    new-instance v8, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda40;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f0

    invoke-virtual {p0, v7, p1, v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 2

    .line 230
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 231
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda68;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda68;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3f4

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 239
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 240
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda56;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3f5

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 170
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 171
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda41;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3ef

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 2

    .line 198
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 199
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda54;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioPositionAdvancing(J)V
    .locals 2

    .line 210
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 211
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda59;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x3f2

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSessionIdChanged(I)V
    .locals 2

    .line 725
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 726
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    .line 250
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 251
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda20;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x3f6

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onAudioUnderrun(IJJ)V
    .locals 9

    .line 220
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 221
    new-instance v8, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3f3

    invoke-virtual {p0, v7, p1, v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onAvailableCommandsChanged(Landroidx/media3/common/Player$Commands;)V
    .locals 2

    .line 516
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 517
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda23;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$Commands;)V

    const/16 p1, 0xd

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onBandwidthSample(IJJ)V
    .locals 9

    .line 801
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateLoadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 802
    new-instance v8, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;

    move-object v0, v8

    move-object v1, v7

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda19;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V

    const/16 p1, 0x3ee

    invoke-virtual {p0, v7, p1, v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Landroidx/media3/common/text/CueGroup;)V
    .locals 2

    .line 709
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 710
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda42;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 702
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 703
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda29;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceInfoChanged(Landroidx/media3/common/DeviceInfo;)V
    .locals 2

    .line 770
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 771
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda24;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDeviceVolumeChanged(IZ)V
    .locals 2

    .line 779
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 780
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda27;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IZ)V

    const/16 p1, 0x1e

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDownstreamFormatChanged(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 453
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 454
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda15;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3ec

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysLoaded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 827
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 828
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda10;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x3ff

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRemoved(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 855
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 856
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda53;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x402

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmKeysRestored(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 846
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 847
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x401

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionAcquired(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;I)V
    .locals 0

    .line 815
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 816
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda14;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 p3, 0x3fe

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionManagerError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 838
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda67;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda67;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p3, 0x400

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDrmSessionReleased(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1

    .line 864
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 865
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    const/16 v0, 0x403

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onDroppedFrames(IJ)V
    .locals 2

    .line 319
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 320
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda35;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V

    const/16 p1, 0x3fa

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onEvents(Landroidx/media3/common/Player;Landroidx/media3/common/Player$Events;)V
    .locals 0

    return-void
.end method

.method public final onIsLoadingChanged(Z)V
    .locals 2

    .line 504
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 505
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda66;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 2

    .line 565
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 566
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda45;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCanceled(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 417
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 418
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;

    invoke-direct {p2, p1, p3, p4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda37;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3ea

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadCompleted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 404
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 405
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;

    invoke-direct {p2, p1, p3, p4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda50;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3e9

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadError(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 6

    .line 432
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 433
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda33;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    const/16 p3, 0x3eb

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onLoadStarted(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 392
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;

    invoke-direct {p2, p1, p3, p4}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda44;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3e8

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    return-void
.end method

.method public onMaxSeekToPreviousPositionChanged(J)V
    .locals 2

    .line 664
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 665
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda11;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x12

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMediaItemTransition(Landroidx/media3/common/MediaItem;I)V
    .locals 2

    .line 479
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 480
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda49;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onMediaMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    .line 674
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 675
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda52;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    const/16 p1, 0xe

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onMetadata(Landroidx/media3/common/Metadata;)V
    .locals 2

    .line 692
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 693
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda39;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayWhenReadyChanged(ZI)V
    .locals 2

    .line 545
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 546
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda43;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    .line 637
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 638
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V

    const/16 p1, 0xc

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackStateChanged(I)V
    .locals 2

    .line 535
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 536
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda48;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlaybackSuppressionReasonChanged(I)V
    .locals 2

    .line 555
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 556
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda65;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerError(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    .line 592
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Landroidx/media3/common/PlaybackException;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 593
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda38;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlayerErrorChanged(Landroidx/media3/common/PlaybackException;)V
    .locals 2

    .line 601
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->getEventTimeForErrorEvent(Landroidx/media3/common/PlaybackException;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 602
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda51;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V

    const/16 p1, 0xa

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onPlayerStateChanged(ZI)V
    .locals 2

    .line 526
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 527
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V

    const/4 p1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPlaylistMetadataChanged(Landroidx/media3/common/MediaMetadata;)V
    .locals 2

    .line 683
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 684
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda30;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaMetadata;)V

    const/16 p1, 0xf

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    return-void
.end method

.method public final onPositionDiscontinuity(Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->isSeeking:Z

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 624
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Player;

    invoke-virtual {v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onPositionDiscontinuity(Landroidx/media3/common/Player;)V

    .line 625
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 626
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;

    invoke-direct {v1, v0, p3, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda21;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onRenderedFirstFrame()V
    .locals 0

    return-void
.end method

.method public final onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 2

    .line 348
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 349
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda63;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onRepeatModeChanged(I)V
    .locals 2

    .line 574
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 575
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda16;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 p1, 0x8

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSeekBackIncrementChanged(J)V
    .locals 2

    .line 646
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 647
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda18;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x10

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSeekForwardIncrementChanged(J)V
    .locals 2

    .line 655
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 656
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda55;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;J)V

    const/16 p1, 0x11

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onShuffleModeEnabledChanged(Z)V
    .locals 2

    .line 583
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 584
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda47;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x9

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 716
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 717
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda46;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onSurfaceSizeChanged(II)V
    .locals 2

    .line 376
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 377
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda64;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onTimelineChanged(Landroidx/media3/common/Timeline;I)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 468
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onTimelineChanged(Landroidx/media3/common/Player;)V

    .line 469
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 470
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda34;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTrackSelectionParametersChanged(Landroidx/media3/common/TrackSelectionParameters;)V
    .locals 2

    .line 761
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 762
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda13;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/TrackSelectionParameters;)V

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/common/Tracks;)V
    .locals 2

    .line 488
    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateCurrentPlayerMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 489
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda25;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onUpstreamDiscarded(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateMediaPeriodEventTime(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object p1

    .line 444
    new-instance p2, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    const/16 p3, 0x3ed

    invoke-virtual {p0, p1, p3, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoCodecError(Ljava/lang/Exception;)V
    .locals 2

    .line 367
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 368
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda17;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    const/16 p1, 0x406

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 292
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v7

    .line 293
    new-instance v8, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;

    move-object v0, v8

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda31;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    const/16 p1, 0x3f8

    invoke-virtual {p0, v7, p1, v8}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 2

    .line 328
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 329
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    const/16 p1, 0x3fb

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 337
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 338
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda62;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3fc

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 279
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 280
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda36;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V

    const/16 p1, 0x3f7

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoFrameProcessingOffset(JI)V
    .locals 2

    .line 357
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generatePlayingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 358
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;

    invoke-direct {v1, v0, p1, p2, p3}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda22;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;JI)V

    const/16 p1, 0x3fd

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 2

    .line 307
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 308
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    const/16 p1, 0x3f9

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2

    .line 744
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 745
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda61;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public final onVolumeChanged(F)V
    .locals 2

    .line 268
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->generateReadingMediaPeriodEventTime()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    .line 269
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V

    const/16 p1, 0x16

    invoke-virtual {p0, v0, p1, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Landroidx/media3/common/util/HandlerWrapper;

    .line 144
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/util/HandlerWrapper;

    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;

    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda58;-><init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;)V

    invoke-interface {v0, v1}, Landroidx/media3/common/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/analytics/AnalyticsListener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 123
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method protected final sendEvent(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;",
            "I",
            "Landroidx/media3/common/util/ListenerSet$Event<",
            "Landroidx/media3/exoplayer/analytics/AnalyticsListener;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->eventTimes:Landroid/util/SparseArray;

    .line 883
    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 884
    invoke-virtual {p0, p2, p3}, Landroidx/media3/common/util/ListenerSet;->sendEvent(ILandroidx/media3/common/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPlayer(Landroidx/media3/common/Player;Landroid/os/Looper;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    .line 129
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->access$000(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 130
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Player;

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->clock:Landroidx/media3/common/util/Clock;

    const/4 v1, 0x0

    .line 131
    invoke-interface {v0, p2, v1}, Landroidx/media3/common/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroidx/media3/common/util/HandlerWrapper;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->handler:Landroidx/media3/common/util/HandlerWrapper;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 132
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$$ExternalSyntheticLambda28;-><init>(Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;Landroidx/media3/common/Player;)V

    .line 133
    invoke-virtual {v0, p2, v1}, Landroidx/media3/common/util/ListenerSet;->copy(Landroid/os/Looper;Landroidx/media3/common/util/ListenerSet$IterationFinishedEvent;)Landroidx/media3/common/util/ListenerSet;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    return-void
.end method

.method public setThrowsWhenUsingWrongThread(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->listeners:Landroidx/media3/common/util/ListenerSet;

    .line 110
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ListenerSet;->setThrowsWhenUsingWrongThread(Z)V

    return-void
.end method

.method public final updateMediaPeriodQueueInfo(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ">;",
            "Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->mediaPeriodQueueTracker:Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->player:Landroidx/media3/common/Player;

    .line 150
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Player;

    invoke-virtual {v0, p1, p2, p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector$MediaPeriodQueueTracker;->onQueueUpdated(Ljava/util/List;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Player;)V

    return-void
.end method
