.class public final Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;
.super Ljava/lang/Object;
.source "DefaultPlaybackSessionManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/analytics/PlaybackSessionManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    }
.end annotation


# static fields
.field public static final DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RANDOM:Ljava/util/Random;

.field private static final SESSION_ID_LENGTH:I = 0xc


# instance fields
.field private currentSessionId:Ljava/lang/String;

.field private currentTimeline:Landroidx/media3/common/Timeline;

.field private lastRemovedCurrentWindowSequenceNumber:J

.field private listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

.field private final period:Landroidx/media3/common/Timeline$Period;

.field private final sessionIdGenerator:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public static synthetic $r8$lambda$HYfPMFDnWG-Gleyzin0hfhOaabA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->generateDefaultSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->DEFAULT_SESSION_ID_GENERATOR:Lcom/google/common/base/Supplier;

    .line 68
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;-><init>(Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/base/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    .line 79
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media3/common/Timeline$Window;

    .line 80
    new-instance p1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 82
    sget-object p1, Landroidx/media3/common/Timeline;->EMPTY:Landroidx/media3/common/Timeline;

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    return-void
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)J
    .locals 2

    .line 45
    invoke-direct {p0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Landroidx/media3/common/Timeline$Window;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->window:Landroidx/media3/common/Timeline$Window;

    return-object p0
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;)Landroidx/media3/common/Timeline$Period;
    .locals 0

    .line 45
    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    return-object p0
.end method

.method private clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V
    .locals 4

    .line 281
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 282
    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    return-void
.end method

.method private static generateDefaultSessionId()Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    sget-object v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->RANDOM:Ljava/util/Random;

    .line 327
    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 328
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMinWindowSequenceNumber()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 288
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    if-eqz v0, :cond_0

    .line 289
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 290
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->lastRemovedCurrentWindowSequenceNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 302
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 303
    invoke-virtual {v4, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 304
    invoke-virtual {v4, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    invoke-static {v4}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    goto :goto_1

    :cond_1
    if-nez v7, :cond_0

    .line 311
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v5}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 312
    invoke-static {v4}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_2
    :goto_1
    move-object v1, v4

    move-wide v2, v5

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessionIdGenerator:Lcom/google/common/base/Supplier;

    .line 318
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 319
    new-instance v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {v1, p0, v0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;-><init>(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;Ljava/lang/String;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 320
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v1
.end method

.method private updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 247
    iget-object v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v0}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 250
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 254
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 255
    iget v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 256
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v1

    .line 257
    invoke-static {v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 258
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V

    .line 259
    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 260
    invoke-virtual {v2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    .line 262
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v2

    iget-object v4, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v4, v4, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 264
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 265
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v2

    iget v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v2, v3, :cond_2

    .line 267
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$500(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v0

    iget v0, v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-eq v0, v2, :cond_3

    .line 270
    :cond_2
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct {v0, v2, v3, v4}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    .line 273
    iget v2, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 274
    invoke-direct {p0, v2, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 276
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-interface {p0, p1, v0, v1}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onAdPlaybackStarted(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public declared-synchronized belongsToSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 100
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 102
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 104
    :cond_0
    :try_start_1
    iget v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2, v0, v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->maybeSetWindowSequenceNumber(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    .line 105
    iget v0, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object p1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2, v0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->belongsToSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized finishAllSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 232
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 234
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 235
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 238
    invoke-static {v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    if-eqz v2, :cond_1

    .line 240
    invoke-static {v1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 239
    invoke-interface {v2, p1, v1, v3}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getActiveSessionId()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionForMediaPeriodId(Landroidx/media3/common/Timeline;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    move-result-object p1

    iget p1, p1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setListener(Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    return-void
.end method

.method public declared-synchronized updateSessions(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 110
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    invoke-virtual {v2}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 113
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getMinWindowSequenceNumber()J

    move-result-wide v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 118
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 120
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    if-eqz v2, :cond_2

    .line 122
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$100(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 123
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$200(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)I

    move-result v2

    iget v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v2, v3, :cond_2

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :cond_2
    :try_start_3
    iget v2, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 130
    invoke-direct {v1, v2, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 132
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    .line 134
    :cond_3
    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 136
    new-instance v10, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-wide v5, v5, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v7, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v7, v7, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-direct {v10, v3, v5, v6, v7}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    .line 141
    iget v3, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    .line 142
    invoke-direct {v1, v3, v10}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->getOrAddSession(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    move-result-object v3

    .line 143
    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 144
    invoke-static {v3, v4}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    .line 145
    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v7, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    invoke-virtual {v5, v6, v7}, Landroidx/media3/common/Timeline;->getPeriodByUid(Ljava/lang/Object;Landroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    iget-object v5, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    .line 146
    iget-object v6, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->mediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v6, v6, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 147
    invoke-virtual {v5, v6}, Landroidx/media3/common/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v5

    iget-object v7, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->period:Landroidx/media3/common/Timeline$Period;

    .line 148
    invoke-virtual {v7}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v7

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    .line 150
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 151
    new-instance v15, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    iget-wide v6, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->realtimeMs:J

    iget-object v8, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iget v9, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->windowIndex:I

    iget-object v13, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentTimeline:Landroidx/media3/common/Timeline;

    iget v14, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentWindowIndex:I

    iget-object v5, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentMediaPeriodId:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-object/from16 v16, v5

    iget-wide v4, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->currentPlaybackPositionMs:J

    move-object/from16 v20, v2

    move-object/from16 v21, v3

    iget-wide v2, v0, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->totalBufferedDurationMs:J

    move-wide/from16 v22, v4

    move-object/from16 v4, v16

    move-wide/from16 v16, v22

    move-object v5, v15

    move-object v0, v15

    move-object v15, v4

    move-wide/from16 v18, v2

    invoke-direct/range {v5 .. v19}, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;-><init>(JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JLandroidx/media3/common/Timeline;ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;JJ)V

    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 163
    invoke-static/range {v21 .. v21}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object/from16 v20, v2

    .line 166
    :goto_0
    invoke-static/range {v20 .. v20}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object/from16 v0, v20

    const/4 v2, 0x1

    .line 167
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$302(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 168
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-interface {v2, v4, v3}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionCreated(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v4, p1

    move-object/from16 v0, v20

    .line 170
    :goto_1
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    .line 171
    invoke-static {v0, v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$402(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;Z)Z

    iget-object v2, v1, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 172
    invoke-static {v0}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionActive(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateSessionsWithDiscontinuity(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 202
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 204
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 205
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 206
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    .line 207
    invoke-virtual {v3, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 209
    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 210
    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    .line 212
    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$400(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v0

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-eqz v4, :cond_3

    .line 214
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_3
    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 216
    invoke-static {v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, p1, v3, v5}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_1

    .line 220
    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateSessionsWithTimelineChange(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 178
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    .line 180
    iget-object v1, p1, Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;->timeline:Landroidx/media3/common/Timeline;

    iput-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    iget-object v1, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->sessions:Ljava/util/HashMap;

    .line 181
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 182
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;

    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentTimeline:Landroidx/media3/common/Timeline;

    .line 184
    invoke-virtual {v2, v0, v3}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->tryResolvingToNewTimeline(Landroidx/media3/common/Timeline;Landroidx/media3/common/Timeline;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-virtual {v2, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->isFinishedAtEventTime(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 187
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$300(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->currentSessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->clearCurrentSession(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)V

    :cond_2
    iget-object v3, p0, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->listener:Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;

    .line 192
    invoke-static {v2}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;->access$000(Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager$SessionDescriptor;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 191
    invoke-interface {v3, p1, v2, v4}, Landroidx/media3/exoplayer/analytics/PlaybackSessionManager$Listener;->onSessionFinished(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;Ljava/lang/String;Z)V

    goto :goto_0

    .line 196
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/analytics/DefaultPlaybackSessionManager;->updateCurrentSession(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
