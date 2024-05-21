.class public Landroidx/media3/exoplayer/util/EventLogger;
.super Ljava/lang/Object;
.source "EventLogger.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/AnalyticsListener;


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "EventLogger"

.field private static final MAX_TIMELINE_ITEM_LINES:I = 0x3

.field private static final TIME_FORMAT:Ljava/text/NumberFormat;


# instance fields
.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final startTimeMs:J

.field private final tag:Ljava/lang/String;

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    const/4 v1, 0x2

    .line 60
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 61
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "EventLogger"

    .line 72
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string p1, "EventLogger"

    .line 96
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/util/EventLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/EventLogger;->tag:Ljava/lang/String;

    .line 82
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/EventLogger;->window:Landroidx/media3/common/Timeline$Window;

    .line 83
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/util/EventLogger;->period:Landroidx/media3/common/Timeline$Period;

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/util/EventLogger;->startTimeMs:J

    return-void
.end method

.method private static getDiscontinuityReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "INTERNAL"

    return-object p0

    :cond_1
    const-string p0, "REMOVE"

    return-object p0

    :cond_2
    const-string p0, "SKIP"

    return-object p0

    :cond_3
    const-string p0, "SEEK_ADJUSTMENT"

    return-object p0

    :cond_4
    const-string p0, "SEEK"

    return-object p0

    :cond_5
    const-string p0, "AUTO_TRANSITION"

    return-object p0
.end method

.method private getEventString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->getEventTimeString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 605
    instance-of p1, p4, Landroidx/media3/common/PlaybackException;

    if-eqz p1, :cond_0

    .line 606
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", errorCode="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object p1, p4

    check-cast p1, Landroidx/media3/common/PlaybackException;

    invoke-virtual {p1}, Landroidx/media3/common/PlaybackException;->getErrorCodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 609
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 611
    :cond_1
    invoke-static {p4}, Landroidx/media3/common/util/Log;->getThrowableString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 613
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\n  "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, "\n"

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 615
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getEventTimeString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;
    .locals 6

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "window="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v1, :cond_0

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 623
    invoke-virtual {v1, v2}, Landroidx/media3/common/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v1, v1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "eventTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->startTimeMs:J

    sub-long/2addr v2, v4

    .line 630
    invoke-static {v2, v3}, Landroidx/media3/exoplayer/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", mediaPos="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->eventPlaybackPositionMs:J

    .line 632
    invoke-static {v1, v2}, Landroidx/media3/exoplayer/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getMediaItemTransitionReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0

    :cond_1
    const-string p0, "SEEK"

    return-object p0

    :cond_2
    const-string p0, "AUTO"

    return-object p0

    :cond_3
    const-string p0, "REPEAT"

    return-object p0
.end method

.method private static getPlayWhenReadyChangeReasonString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "END_OF_MEDIA_ITEM"

    return-object p0

    :cond_1
    const-string p0, "REMOTE"

    return-object p0

    :cond_2
    const-string p0, "AUDIO_BECOMING_NOISY"

    return-object p0

    :cond_3
    const-string p0, "AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_4
    const-string p0, "USER_REQUEST"

    return-object p0
.end method

.method private static getPlaybackSuppressionReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "TRANSIENT_AUDIO_FOCUS_LOSS"

    return-object p0

    :cond_1
    const-string p0, "NONE"

    return-object p0
.end method

.method private static getRepeatModeString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ALL"

    return-object p0

    :cond_1
    const-string p0, "ONE"

    return-object p0

    :cond_2
    const-string p0, "OFF"

    return-object p0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ENDED"

    return-object p0

    :cond_1
    const-string p0, "READY"

    return-object p0

    :cond_2
    const-string p0, "BUFFERING"

    return-object p0

    :cond_3
    const-string p0, "IDLE"

    return-object p0
.end method

.method private static getTimeString(J)Ljava/lang/String;
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "?"

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/media3/exoplayer/util/EventLogger;->TIME_FORMAT:Ljava/text/NumberFormat;

    long-to-float p0, p0

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 638
    invoke-virtual {v0, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getTimelineChangeReasonString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "SOURCE_UPDATE"

    return-object p0

    :cond_1
    const-string p0, "PLAYLIST_CHANGED"

    return-object p0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    const-string p0, "[X]"

    goto :goto_0

    :cond_0
    const-string p0, "[ ]"

    :goto_0
    return-object p0
.end method

.method private logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/media3/exoplayer/util/EventLogger;->getEventString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 574
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/exoplayer/util/EventLogger;->getEventString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 586
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/util/EventLogger;->getEventString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private loge(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 578
    invoke-direct {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/util/EventLogger;->getEventString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private printInternalError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "internalError"

    .line 590
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/media3/exoplayer/util/EventLogger;->loge(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private printMetadata(Landroidx/media3/common/Metadata;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 594
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected logd(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/EventLogger;->tag:Ljava/lang/String;

    .line 554
    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/util/EventLogger;->tag:Ljava/lang/String;

    .line 564
    invoke-static {p0, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioAttributesChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/AudioAttributes;)V
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Landroidx/media3/common/AudioAttributes;->contentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Landroidx/media3/common/AudioAttributes;->flags:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p2, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p2, p2, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "audioAttributes"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    const-string p3, "audioDecoderInitialized"

    .line 338
    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const-string v0, "audioDecoderReleased"

    .line 362
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    const-string p2, "audioDisabled"

    .line 368
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    const-string p2, "audioEnabled"

    .line 331
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    const-string p3, "audioInputFormat"

    .line 345
    invoke-static {p2}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioSessionIdChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    const-string v0, "audioSessionId"

    .line 374
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioUnderrun(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 1

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, "audioTrackUnderrun"

    invoke-direct {p0, p1, p4, p2, p3}, Landroidx/media3/exoplayer/util/EventLogger;->loge(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onBandwidthEstimate(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    return-void
.end method

.method public onDownstreamFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 508
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    invoke-static {p2}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "downstreamFormat"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysLoaded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmKeysLoaded"

    .line 538
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRemoved(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmKeysRemoved"

    .line 532
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmKeysRestored(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmKeysRestored"

    .line 526
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionAcquired(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "drmSessionAcquired"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDrmSessionManagerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "drmSessionManagerError"

    .line 520
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->printInternalError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onDrmSessionReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 1

    const-string v0, "drmSessionReleased"

    .line 544
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onDroppedVideoFrames(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    const-string p3, "droppedFrames"

    .line 427
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIsLoadingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    const-string v0, "loading"

    .line 117
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIsPlayingChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    const-string v0, "isPlaying"

    .line 149
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadCanceled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    const-string p2, "loadError"

    .line 469
    invoke-direct {p0, p1, p2, p4}, Landroidx/media3/exoplayer/util/EventLogger;->printInternalError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onLoadStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onMediaItemTransition(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/MediaItem;I)V
    .locals 1

    .line 262
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "mediaItem ["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->getEventTimeString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", reason="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 266
    invoke-static {p3}, Landroidx/media3/exoplayer/util/EventLogger;->getMediaItemTransitionReasonString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onMetadata(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Metadata;)V
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "metadata ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->getEventTimeString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    const-string p1, "  "

    .line 324
    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/util/EventLogger;->printMetadata(Landroidx/media3/common/Metadata;Ljava/lang/String;)V

    const-string p1, "]"

    .line 325
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 133
    invoke-static {p3}, Landroidx/media3/exoplayer/util/EventLogger;->getPlayWhenReadyChangeReasonString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "playWhenReady"

    .line 130
    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    const-string v0, "playbackParameters"

    .line 216
    invoke-virtual {p2}, Landroidx/media3/common/PlaybackParameters;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    const-string v0, "state"

    .line 123
    invoke-static {p2}, Landroidx/media3/exoplayer/util/EventLogger;->getStateString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackSuppressionReasonChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    const-string v0, "playbackSuppressionReason"

    .line 143
    invoke-static {p2}, Landroidx/media3/exoplayer/util/EventLogger;->getPlaybackSuppressionReasonString(I)Ljava/lang/String;

    move-result-object p2

    .line 140
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlayerError(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/PlaybackException;)V
    .locals 1

    const-string v0, "playerFailed"

    .line 273
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->loge(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onPositionDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;I)V
    .locals 9

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-static {p4}, Landroidx/media3/exoplayer/util/EventLogger;->getDiscontinuityReasonString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ", PositionInfo:old [mediaItem="

    .line 175
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 176
    iget v1, p2, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 177
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ", period="

    .line 178
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v2, p2, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 179
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, ", pos="

    .line 180
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-wide v3, p2, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 181
    invoke-virtual {p4, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    iget p4, p2, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    const-string v3, ", ad="

    const-string v4, ", adGroup="

    const-string v5, ", contentPos="

    const/4 v6, -0x1

    if-eq p4, v6, :cond_0

    .line 184
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-wide v7, p2, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 185
    invoke-virtual {p4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 186
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget v7, p2, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 187
    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 188
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget p2, p2, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 189
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "], PositionInfo:new [mediaItem="

    .line 192
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 193
    iget p4, p3, Landroidx/media3/common/Player$PositionInfo;->mediaItemIndex:I

    .line 194
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 195
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p3, Landroidx/media3/common/Player$PositionInfo;->periodIndex:I

    .line 196
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 197
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v1, p3, Landroidx/media3/common/Player$PositionInfo;->positionMs:J

    .line 198
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    iget p2, p3, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    if-eq p2, v6, :cond_1

    .line 201
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v1, p3, Landroidx/media3/common/Player$PositionInfo;->contentPositionMs:J

    .line 202
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 203
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p4, p3, Landroidx/media3/common/Player$PositionInfo;->adGroupIndex:I

    .line 204
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 205
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p3, Landroidx/media3/common/Player$PositionInfo;->adIndexInAdGroup:I

    .line 206
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string p2, "]"

    .line 208
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "positionDiscontinuity"

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderedFirstFrame(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    const-string p3, "renderedFirstFrame"

    .line 445
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRepeatModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 1

    const-string v0, "repeatMode"

    .line 155
    invoke-static {p2}, Landroidx/media3/exoplayer/util/EventLogger;->getRepeatModeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShuffleModeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    const-string v0, "shuffleModeEnabled"

    .line 161
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Z)V
    .locals 1

    const-string v0, "skipSilenceEnabled"

    .line 395
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;II)V
    .locals 1

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "surfaceSize"

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTimelineChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 8

    .line 222
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    .line 223
    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "timeline ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->getEventTimeString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", periodCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", windowCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 232
    invoke-static {p2}, Landroidx/media3/exoplayer/util/EventLogger;->getTimelineChangeReasonString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v2, p2

    :goto_0
    const/4 v3, 0x3

    .line 233
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    const-string v5, "]"

    if-ge v2, v4, :cond_0

    .line 234
    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v3, v2, v4}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  period ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Period;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "  ..."

    if-le v0, v3, :cond_1

    .line 238
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 240
    :cond_1
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 241
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->window:Landroidx/media3/common/Timeline$Window;

    invoke-virtual {v0, p2, v4}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "  window ["

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->window:Landroidx/media3/common/Timeline$Window;

    .line 245
    invoke-virtual {v4}, Landroidx/media3/common/Timeline$Window;->getDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/media3/exoplayer/util/EventLogger;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", seekable="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->window:Landroidx/media3/common/Timeline$Window;

    iget-boolean v4, v4, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", dynamic="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroidx/media3/exoplayer/util/EventLogger;->window:Landroidx/media3/common/Timeline$Window;

    iget-boolean v4, v4, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    if-le v1, v3, :cond_3

    .line 253
    invoke-virtual {p0, v2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 255
    :cond_3
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onTracksChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Tracks;)V
    .locals 8

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tracks ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->getEventTimeString(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroidx/media3/common/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 282
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    const-string v2, "    "

    const-string v3, "  ]"

    if-ge v0, v1, :cond_1

    .line 283
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Tracks$Group;

    const-string v4, "  group ["

    .line 284
    invoke-virtual {p0, v4}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    move v4, p2

    .line 285
    :goto_1
    iget v5, v1, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v4, v5, :cond_0

    .line 286
    invoke-virtual {v1, v4}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v5

    invoke-static {v5}, Landroidx/media3/exoplayer/util/EventLogger;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object v5

    .line 287
    invoke-virtual {v1, v4}, Landroidx/media3/common/Tracks$Group;->getTrackSupport(I)I

    move-result v6

    invoke-static {v6}, Landroidx/media3/common/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object v6

    .line 288
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Track:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 294
    invoke-virtual {v1, v4}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", supported="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-virtual {p0, v5}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 298
    :cond_0
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, p2

    move v1, v0

    :goto_2
    if-nez v0, :cond_4

    .line 303
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 304
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Tracks$Group;

    move v5, p2

    :goto_3
    if-nez v0, :cond_3

    .line 305
    iget v6, v4, Landroidx/media3/common/Tracks$Group;->length:I

    if-ge v5, v6, :cond_3

    .line 306
    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->isTrackSelected(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 307
    invoke-virtual {v4, v5}, Landroidx/media3/common/Tracks$Group;->getTrackFormat(I)Landroidx/media3/common/Format;

    move-result-object v6

    iget-object v6, v6, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-eqz v6, :cond_2

    .line 308
    invoke-virtual {v6}, Landroidx/media3/common/Metadata;->length()I

    move-result v7

    if-lez v7, :cond_2

    const-string v0, "  Metadata ["

    .line 309
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0, v6, v2}, Landroidx/media3/exoplayer/util/EventLogger;->printMetadata(Landroidx/media3/common/Metadata;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const-string p1, "]"

    .line 317
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public onUpstreamDiscarded(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 1

    .line 502
    iget-object p2, p2, Landroidx/media3/exoplayer/source/MediaLoadData;->trackFormat:Landroidx/media3/common/Format;

    invoke-static {p2}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "upstreamDiscarded"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    const-string p3, "videoDecoderInitialized"

    .line 414
    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDecoderReleased(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 1

    const-string v0, "videoDecoderReleased"

    .line 433
    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    const-string p2, "videoDisabled"

    .line 439
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    const-string p2, "videoEnabled"

    .line 407
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    const-string p3, "videoInputFormat"

    .line 421
    invoke-static {p2}, Landroidx/media3/common/Format;->toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Landroidx/media3/common/VideoSize;)V
    .locals 2

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Landroidx/media3/common/VideoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p2, p2, Landroidx/media3/common/VideoSize;->height:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "videoSize"

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVolumeChanged(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;F)V
    .locals 1

    const-string v0, "volume"

    .line 401
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/util/EventLogger;->logd(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
