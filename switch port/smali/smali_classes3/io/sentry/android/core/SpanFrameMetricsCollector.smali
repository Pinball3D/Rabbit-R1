.class public Lio/sentry/android/core/SpanFrameMetricsCollector;
.super Ljava/lang/Object;
.source "SpanFrameMetricsCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceContinuousCollector;
.implements Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
    }
.end annotation


# static fields
.field private static final MAX_FRAMES_COUNT:I = 0xe10

.field private static final ONE_SECOND_NANOS:J

.field private static final UNIX_START_DATE:Lio/sentry/SentryNanotimeDate;


# instance fields
.field private final enabled:Z

.field private final frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field private final frames:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;",
            ">;"
        }
    .end annotation
.end field

.field private lastKnownFrameDurationNanos:J

.field private volatile listenerId:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;

.field private final runningSpans:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->ONE_SECOND_NANOS:J

    .line 33
    new-instance v0, Lio/sentry/SentryNanotimeDate;

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    sput-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->UNIX_START_DATE:Lio/sentry/SentryNanotimeDate;

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/android/core/SpanFrameMetricsCollector$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    const-wide/32 v0, 0xfe502a

    iput-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    iput-object p2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 72
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnablePerformanceV2()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableFramesTracking()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    return-void
.end method

.method private static addPendingFrameDelay(Lio/sentry/android/core/SentryFrameMetrics;JJJ)I
    .locals 7

    sub-long/2addr p3, p5

    const-wide/16 p5, 0x0

    .line 285
    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 287
    invoke-static {v1, v2, p1, p2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 290
    invoke-static {v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v6

    sub-long p1, v1, p1

    .line 291
    invoke-static {p5, p6, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object v0, p0

    .line 292
    invoke-virtual/range {v0 .. v6}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private captureFrameMetrics(Lio/sentry/ISpan;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Ljava/lang/Object;

    .line 132
    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 133
    invoke-interface {v3, v1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    monitor-exit v2

    return-void

    .line 139
    :cond_0
    invoke-interface/range {p1 .. p1}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v3

    if-nez v3, :cond_1

    .line 141
    monitor-exit v2

    return-void

    .line 143
    :cond_1
    invoke-static {v3}, Lio/sentry/android/core/SpanFrameMetricsCollector;->realNanos(Lio/sentry/SentryDate;)J

    move-result-wide v7

    .line 145
    new-instance v3, Lio/sentry/android/core/SentryFrameMetrics;

    invoke-direct {v3}, Lio/sentry/android/core/SentryFrameMetrics;-><init>()V

    .line 146
    invoke-interface/range {p1 .. p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v4

    invoke-static {v4}, Lio/sentry/android/core/SpanFrameMetricsCollector;->realNanos(Lio/sentry/SentryDate;)J

    move-result-wide v4

    cmp-long v6, v4, v7

    if-ltz v6, :cond_2

    .line 148
    monitor-exit v2

    return-void

    :cond_2
    sub-long v14, v7, v4

    iget-wide v9, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    iget-object v6, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 154
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 156
    new-instance v11, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-direct {v11, v4, v5}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/util/concurrent/ConcurrentSkipListSet;->tailSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 159
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 160
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    .line 162
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-lez v11, :cond_3

    goto/16 :goto_2

    .line 166
    :cond_3
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    cmp-long v9, v9, v4

    if-ltz v9, :cond_4

    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-gtz v9, :cond_4

    .line 169
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$200(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v10

    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v12

    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$400(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z

    move-result v17

    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$500(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z

    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v3

    move-object/from16 v19, v2

    move-wide v1, v14

    move/from16 v14, v17

    move/from16 v15, v18

    .line 168
    :try_start_1
    invoke-virtual/range {v9 .. v15}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    goto :goto_1

    :cond_4
    move-object/from16 v19, v2

    move-wide v1, v14

    .line 170
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-lez v9, :cond_5

    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    cmp-long v9, v4, v9

    if-ltz v9, :cond_6

    .line 171
    :cond_5
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-gez v9, :cond_7

    .line 174
    :cond_6
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    sub-long v9, v4, v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 176
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v13

    sub-long/2addr v9, v13

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 178
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v11

    sub-long/2addr v11, v9

    invoke-static {v11, v12, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 180
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 181
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v14

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    sub-long v10, v14, v9

    .line 186
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v14

    invoke-static {v10, v11, v14, v15}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isSlow(JJ)Z

    move-result v14

    .line 187
    invoke-static {v10, v11}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->isFrozen(J)Z

    move-result v15

    move-object v9, v3

    .line 183
    invoke-virtual/range {v9 .. v15}, Lio/sentry/android/core/SentryFrameMetrics;->addFrame(JJZZ)V

    .line 190
    :cond_7
    :goto_1
    invoke-static/range {v16 .. v16}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J

    move-result-wide v9

    move-wide v14, v1

    move-object/from16 v2, v19

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_8
    :goto_2
    move-object/from16 v19, v2

    move-wide v1, v14

    move-wide v11, v9

    .line 194
    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getTotalFrameCount()I

    move-result v13

    iget-object v0, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 196
    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->getLastKnownFrameStartTimeNanos()J

    move-result-wide v9

    move-object v4, v3

    move-wide v5, v11

    .line 198
    invoke-static/range {v4 .. v10}, Lio/sentry/android/core/SpanFrameMetricsCollector;->addPendingFrameDelay(Lio/sentry/android/core/SentryFrameMetrics;JJJ)I

    move-result v0

    add-int/2addr v13, v0

    .line 200
    invoke-static {v3, v11, v12, v1, v2}, Lio/sentry/android/core/SpanFrameMetricsCollector;->interpolateFrameCount(Lio/sentry/android/core/SentryFrameMetrics;JJ)I

    move-result v0

    add-int/2addr v13, v0

    .line 203
    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameDelayNanos()J

    move-result-wide v0

    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameDelayNanos()J

    move-result-wide v4

    add-long/2addr v0, v4

    long-to-double v0, v0

    const-wide v4, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v4

    const-string v2, "frames.total"

    .line 206
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-interface {v5, v2, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "frames.slow"

    .line 207
    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "frames.frozen"

    .line 208
    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "frames.delay"

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    instance-of v2, v5, Lio/sentry/ITransaction;

    if-eqz v2, :cond_9

    const-string v2, "frames_total"

    .line 212
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "frames_slow"

    .line 213
    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getSlowFrameCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v2, v4}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "frames_frozen"

    .line 214
    invoke-virtual {v3}, Lio/sentry/android/core/SentryFrameMetrics;->getFrozenFrameCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    const-string v2, "frames_delay"

    .line 215
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v5, v2, v0}, Lio/sentry/ISpan;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    .line 217
    :cond_9
    monitor-exit v19

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v19, v2

    :goto_3
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method private static interpolateFrameCount(Lio/sentry/android/core/SentryFrameMetrics;JJ)I
    .locals 2

    .line 272
    invoke-virtual {p0}, Lio/sentry/android/core/SentryFrameMetrics;->getTotalDurationNanos()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-lez p0, :cond_0

    .line 275
    div-long/2addr p3, p1

    long-to-int p0, p3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$new$0(Lio/sentry/ISpan;Lio/sentry/ISpan;)I
    .locals 2

    .line 45
    invoke-interface {p0}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-interface {p1}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    .line 51
    :cond_0
    invoke-interface {p0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    .line 52
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object p0

    .line 54
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SpanId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static realNanos(Lio/sentry/SentryDate;)J
    .locals 2

    sget-object v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->UNIX_START_DATE:Lio/sentry/SentryNanotimeDate;

    .line 306
    invoke-virtual {p0, v0}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Ljava/lang/Object;

    .line 222
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object v2, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    .line 224
    invoke-virtual {v1, v2}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->stopCollection(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 227
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->clear()V

    iget-object p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 228
    invoke-interface {p0}, Ljava/util/SortedSet;->clear()V

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onFrameMetricCollected(JJJJZZF)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 244
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->size()I

    move-result v1

    const/16 v2, 0xe10

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    sget-wide v1, Lio/sentry/android/core/SpanFrameMetricsCollector;->ONE_SECOND_NANOS:J

    long-to-double v1, v1

    move/from16 v3, p11

    float-to-double v3, v3

    div-double/2addr v1, v3

    double-to-long v14, v1

    iput-wide v14, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lastKnownFrameDurationNanos:J

    iget-object v0, v0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 252
    new-instance v1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    move-object v3, v1

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v3 .. v15}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 4

    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    if-eqz v0, :cond_1

    return-void

    .line 106
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Ljava/lang/Object;

    .line 111
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 112
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 113
    monitor-exit v0

    return-void

    .line 115
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 117
    invoke-direct {p0, p1}, Lio/sentry/android/core/SpanFrameMetricsCollector;->captureFrameMetrics(Lio/sentry/ISpan;)V

    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Ljava/lang/Object;

    .line 119
    monitor-enter p1

    :try_start_1
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 120
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->clear()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 124
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    iget-object p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frames:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 125
    new-instance v1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-interface {v0}, Lio/sentry/ISpan;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/android/core/SpanFrameMetricsCollector;->realNanos(Lio/sentry/SentryDate;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(J)V

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->headSet(Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->clear()V

    .line 127
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 115
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 2

    iget-boolean v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    instance-of v0, p1, Lio/sentry/NoOpSpan;

    if-eqz v0, :cond_1

    return-void

    .line 83
    :cond_1
    instance-of v0, p1, Lio/sentry/NoOpTransaction;

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->lock:Ljava/lang/Object;

    .line 87
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->runningSpans:Ljava/util/SortedSet;

    .line 88
    invoke-interface {v1, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    if-nez p1, :cond_3

    iget-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->frameMetricsCollector:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    .line 91
    invoke-virtual {p1, p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->startCollection(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$FrameMetricsCollectorListener;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector;->listenerId:Ljava/lang/String;

    .line 93
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
