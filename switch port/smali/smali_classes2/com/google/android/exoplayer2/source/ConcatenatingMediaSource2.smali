.class public final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;
.super Lcom/google/android/exoplayer2/source/CompositeMediaSource;
.source "ConcatenatingMediaSource2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;,
        Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/source/CompositeMediaSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_TIMELINE:I


# instance fields
.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplayer2/source/MediaPeriod;",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceHolders:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private playbackThreadHandler:Landroid/os/Handler;

.field private timelineUpdateScheduled:Z


# direct methods
.method public static synthetic $r8$lambda$5QwC6UTDyJPrb6lu5LkhFaRJXVw(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/MediaItem;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 223
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Object;)I
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private disableUnusedMediaSources()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 347
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 348
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 349
    iget v2, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    if-nez v2, :cond_0

    .line 350
    iget v1, v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->disableChildSource(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static getChildIndex(Ljava/lang/Object;)I
    .locals 0

    .line 448
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

    .line 466
    rem-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 454
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

    .line 442
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J
    .locals 2

    int-to-long v0, p2

    .line 472
    div-long/2addr p0, v0

    return-wide p0
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 0

    .line 325
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->updateTimeline()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private maybeCreateConcatenatedTimeline()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;
    .locals 32

    move-object/from16 v0, p0

    .line 357
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    .line 358
    new-instance v2, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    .line 359
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v3

    .line 360
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 361
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
    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 371
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v6

    if-ge v11, v6, :cond_d

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 372
    invoke-virtual {v6, v11}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 373
    iget-object v8, v6, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplayer2/Timeline;

    move-result-object v8

    .line 374
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    const-string v7, "Can\'t concatenate empty child Timeline."

    invoke-static {v9, v7}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    invoke-virtual {v3, v8}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 376
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 377
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    add-int/2addr v14, v7

    const/4 v7, 0x0

    .line 378
    :goto_1
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v9

    const-wide v27, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v7, v9, :cond_8

    .line 379
    invoke-virtual {v8, v7, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    if-nez v23, :cond_0

    .line 381
    iget-object v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    move-object v13, v9

    const/16 v23, 0x1

    :cond_0
    if-eqz v12, :cond_1

    .line 384
    iget-object v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->manifest:Ljava/lang/Object;

    .line 385
    invoke-static {v13, v9}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move/from16 v29, v11

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    move/from16 v29, v11

    const/4 v12, 0x0

    .line 387
    :goto_2
    iget-wide v10, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v30, v10, v27

    if-nez v30, :cond_3

    .line 389
    iget-wide v10, v6, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    cmp-long v10, v10, v27

    if-nez v10, :cond_2

    const/4 v9, 0x0

    return-object v9

    :cond_2
    const/4 v9, 0x0

    .line 393
    iget-wide v10, v6, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    :goto_3
    add-long v19, v19, v10

    .line 396
    iget v10, v6, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    if-nez v10, :cond_4

    if-nez v7, :cond_4

    .line 397
    iget-wide v10, v1, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    move-wide v15, v10

    .line 398
    iget-wide v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    neg-long v9, v9

    move-wide/from16 v21, v15

    const-wide/16 v24, 0x0

    move-wide v15, v9

    goto :goto_5

    .line 400
    :cond_4
    iget-wide v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

    const-wide/16 v24, 0x0

    cmp-long v9, v9, v24

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    const-string v10, "Can\'t concatenate windows. A window has a non-zero offset in a period."

    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 405
    :goto_5
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isSeekable:Z

    if-nez v9, :cond_7

    iget-boolean v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isPlaceholder:Z

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

    .line 406
    iget-boolean v9, v1, Lcom/google/android/exoplayer2/Timeline$Window;->isDynamic:Z

    or-int v18, v18, v9

    add-int/lit8 v7, v7, 0x1

    move/from16 v11, v29

    goto :goto_1

    :cond_8
    move/from16 v29, v11

    const-wide/16 v24, 0x0

    .line 408
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v7

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v7, :cond_c

    .line 410
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 411
    invoke-virtual {v8, v9, v2}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 412
    iget-wide v10, v2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

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

    .line 414
    invoke-static {v10, v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 418
    iget-wide v10, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    cmp-long v10, v10, v27

    if-eqz v10, :cond_a

    .line 419
    iget-wide v10, v1, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    goto :goto_a

    .line 420
    :cond_a
    iget-wide v10, v6, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->initialPlaceholderDurationUs:J

    :goto_a
    move-object/from16 v26, v3

    .line 421
    iget-wide v2, v1, Lcom/google/android/exoplayer2/Timeline$Window;->positionInFirstPeriodUs:J

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

    .line 426
    new-instance v1, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    .line 428
    invoke-virtual/range {v26 .. v26}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v14

    .line 429
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v15

    .line 430
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

    .line 435
    invoke-direct/range {v12 .. v23}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;-><init>(Lcom/google/android/exoplayer2/MediaItem;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;ZZJJLjava/lang/Object;)V

    return-object v1
.end method

.method private scheduleTimelineUpdate()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    .line 333
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    :cond_0
    return-void
.end method

.method private updateTimeline()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    .line 340
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->refreshSourceInfo(Lcom/google/android/exoplayer2/Timeline;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
    .locals 5

    .line 256
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildIndex(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 257
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 258
    iget-object v1, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 259
    invoke-static {v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 262
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p1

    iget v4, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    .line 261
    invoke-static {v2, v3, p1, v4}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildWindowSequenceNumber(JII)J

    move-result-wide v2

    .line 260
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 263
    iget v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->enableChildSource(Ljava/lang/Object;)V

    .line 264
    iget v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    .line 265
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    .line 266
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 267
    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    return-object p1
.end method

.method protected enableInternal()V
    .locals 0

    return-void
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->maybeCreateConcatenatedTimeline()Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$ConcatenatedTimeline;

    move-result-object p0

    return-object p0
.end method

.method public getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    return-object p0
.end method

.method protected getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 3

    .line 302
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 304
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    .line 303
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getChildIndexFromChildWindowSequenceNumber(JI)I

    move-result v0

    .line 305
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 310
    :cond_0
    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 312
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p0

    .line 311
    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getWindowSequenceNumberFromChildWindowSequenceNumber(JI)J

    move-result-wide v0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget-object p1, p2, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getPeriodUid(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 315
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    .line 316
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getMediaPeriodIdForChildMediaPeriodId(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

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

    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->getWindowIndexForChildWindowIndex(Ljava/lang/Integer;I)I

    move-result p0

    return p0
.end method

.method protected onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    return-void
.end method

.method protected bridge synthetic onChildSourceInfoRefreshed(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V
    .locals 0

    .line 53
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->onChildSourceInfoRefreshed(Ljava/lang/Integer;Lcom/google/android/exoplayer2/source/MediaSource;Lcom/google/android/exoplayer2/Timeline;)V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 2

    .line 239
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->prepareSourceInternal(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 240
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 241
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceHolders:Lcom/google/common/collect/ImmutableList;

    .line 242
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->prepareChildSource(Ljava/lang/Object;Lcom/google/android/exoplayer2/source/MediaSource;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 245
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->scheduleTimelineUpdate()V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 274
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;

    .line 275
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplayer2/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    .line 276
    iget p1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2$MediaSourceHolder;->activeMediaPeriods:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 277
    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->disableUnusedMediaSources()V

    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 2

    .line 284
    invoke-super {p0}, Lcom/google/android/exoplayer2/source/CompositeMediaSource;->releaseSourceInternal()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->playbackThreadHandler:Landroid/os/Handler;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource2;->timelineUpdateScheduled:Z

    return-void
.end method
