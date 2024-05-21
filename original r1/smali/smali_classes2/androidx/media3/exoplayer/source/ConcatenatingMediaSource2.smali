.class public final Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;
.super Landroidx/media3/exoplayer/source/CompositeMediaSource;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;,
        Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_TIMELINE:I


# instance fields
.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;

.field private timelineUpdateScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$4rcHX9TiKL5YuulNUMgCdk6MXNY(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/MediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 225
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;-><init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;)I
    .locals 0

    .line 55
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-static {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 55
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private disableUnusedMediaSources()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 349
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 350
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 351
    iget v2, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    if-nez v2, :cond_0

    .line 352
    iget v1, v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->disableChildSource(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getChildIndex(Ljava/lang/Object;)I
    .locals 0

    .line 450
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getChildIndexFromChildWindowSequenceNumber(JI)I
    .locals 2

    int-to-long v0, p2

    .line 468
    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 456
    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0
.end method

.method private static getChildWindowSequenceNumber(JII)J
    .locals 2

    int-to-long v0, p2

    mul-long/2addr p0, v0

    int-to-long p2, p3

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 444
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J
    .locals 2

    int-to-long v0, p2

    .line 474
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 327
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 328
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->updateTimeline()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private maybeCreateConcatenatedTimeline()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    .locals 32

    move-object/from16 v0, p0

    .line 359
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    .line 360
    new-instance v2, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v2}, Landroidx/media3/common/Timeline$Period;-><init>()V

    .line 361
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 362
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 363
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    const/4 v7, 0x1

    move v12, v7

    move/from16 v17, v12

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    :goto_0
    iget-object v6, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 373
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v11, v6, :cond_d

    iget-object v6, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 374
    invoke-virtual {v6, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 375
    iget-object v8, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v8}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->getTimeline()Landroidx/media3/common/Timeline;

    move-result-object v8

    .line 376
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    const-string v7, "Can\'t concatenate empty child Timeline."

    invoke-static {v9, v7}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 377
    invoke-virtual {v3, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 378
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 379
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v7

    add-int/2addr v14, v7

    const/4 v7, 0x0

    .line 380
    :goto_1
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v9

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v9, :cond_8

    .line 381
    invoke-virtual {v8, v7, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    if-nez v23, :cond_0

    .line 383
    iget-object v9, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    move-object v13, v9

    const/16 v23, 0x1

    :cond_0
    if-eqz v12, :cond_1

    .line 386
    iget-object v9, v1, Landroidx/media3/common/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 387
    invoke-static {v13, v9}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move/from16 v29, v11

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    move/from16 v29, v11

    const/4 v12, 0x0

    .line 389
    :goto_2
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v30, v10, v27

    if-nez v30, :cond_3

    .line 391
    iget-wide v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    cmp-long v10, v10, v27

    if-nez v10, :cond_2

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const/4 v9, 0x0

    .line 395
    iget-wide v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    add-long v19, v19, v10

    .line 398
    iget v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    if-nez v10, :cond_4

    if-nez v7, :cond_4

    .line 399
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    move-wide v15, v10

    .line 400
    iget-wide v9, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    neg-long v9, v9

    move-wide/from16 v21, v15

    const-wide/16 v24, 0x0

    move-wide v15, v9

    goto :goto_5

    .line 402
    :cond_4
    iget-wide v9, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    const-wide/16 v24, 0x0

    cmp-long v9, v9, v24

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    const-string v10, "Can\'t concatenate windows. A window has a non-zero offset in a period."

    invoke-static {v9, v10}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 407
    :goto_5
    iget-boolean v9, v1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-nez v9, :cond_7

    iget-boolean v9, v1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-eqz v9, :cond_6

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v9, 0x1

    :goto_7
    and-int v17, v17, v9

    .line 408
    iget-boolean v9, v1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    or-int v18, v18, v9

    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v29

    goto :goto_1

    :cond_8
    move/from16 v29, v11

    const-wide/16 v24, 0x0

    .line 410
    invoke-virtual {v8}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v7, :cond_c

    .line 412
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 413
    invoke-virtual {v8, v9, v2}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;)Landroidx/media3/common/Timeline$Period;

    .line 414
    iget-wide v10, v2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    cmp-long v31, v10, v27

    if-nez v31, :cond_b

    move-object/from16 v31, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_9

    move v10, v2

    goto :goto_9

    :cond_9
    const/4 v10, 0x0

    :goto_9
    const-string v11, "Can\'t concatenate multiple periods with unknown duration in one window."

    .line 416
    invoke-static {v10, v11}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 420
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v10, v10, v27

    if-eqz v10, :cond_a

    .line 421
    iget-wide v10, v1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    goto :goto_a

    .line 422
    :cond_a
    iget-wide v10, v6, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    :goto_a
    move-object/from16 v26, v3

    .line 423
    iget-wide v2, v1, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    add-long/2addr v10, v2

    goto :goto_b

    :cond_b
    move-object/from16 v31, v2

    move-object/from16 v26, v3

    :goto_b
    add-long/2addr v15, v10

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v26

    move-object/from16 v2, v31

    goto :goto_8

    :cond_c
    move-object/from16 v31, v2

    move-object/from16 v26, v3

    add-int/lit8 v11, v29, 0x1

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v26, v3

    .line 428
    new-instance v1, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;

    .line 430
    invoke-virtual/range {v26 .. v26}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    .line 431
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 432
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    if-eqz v12, :cond_e

    move-object/from16 v23, v13

    goto :goto_c

    :cond_e
    const/16 v23, 0x0

    :goto_c
    move-object v12, v1

    move-object v13, v0

    .line 437
    invoke-direct/range {v12 .. v23}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;-><init>(Landroidx/media3/common/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZJJLjava/lang/Object;)V

    return-object v1
.end method

.method private scheduleTimelineUpdate()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 335
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    :cond_0
    return-void
.end method

.method private updateTimeline()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 342
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 5

    .line 258
    iget-object v0, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 259
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 260
    iget-object v1, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 261
    invoke-static {v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, p1, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 264
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    iget v4, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 263
    invoke-static {v2, v3, p1, v4}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildWindowSequenceNumber(JII)J

    move-result-wide v2

    .line 262
    invoke-virtual {v1, v2, v3}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 265
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->enableChildSource(Ljava/lang/Object;)V

    .line 266
    iget v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 267
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    .line 268
    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MaskingMediaPeriod;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 269
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    return-object p1
.end method

.method protected enableInternal()V
    .locals 0

    return-void
.end method

.method public getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    .line 231
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object p0

    return-object p0
.end method

.method public getMediaItem()Landroidx/media3/common/MediaItem;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaItem:Landroidx/media3/common/MediaItem;

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 3

    .line 304
    iget-wide v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 306
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 305
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getChildIndexFromChildWindowSequenceNumber(JI)I

    move-result v0

    .line 307
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_0
    iget-wide v0, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 314
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    .line 313
    invoke-static {v0, v1, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J

    move-result-wide v0

    .line 315
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 317
    invoke-virtual {p2, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    .line 318
    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected bridge synthetic getWindowIndexForChildWindowIndex(Ljava/lang/Object;I)I
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I

    move-result p0

    return p0
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 0

    .line 54
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V
    .locals 2

    .line 241
    invoke-super {p0, p1}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->prepareSourceInternal(Landroidx/media3/datasource/TransferListener;)V

    .line 242
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 243
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {p0, v1, v0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->prepareChildSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 276
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 277
    iget-object v1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Landroidx/media3/exoplayer/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Landroidx/media3/exoplayer/source/MaskingMediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    .line 278
    iget p1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 279
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 280
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 286
    invoke-super {p0}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 288
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    return-void
.end method
