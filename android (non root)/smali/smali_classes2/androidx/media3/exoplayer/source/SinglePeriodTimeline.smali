.class public final Landroidx/media3/exoplayer/source/SinglePeriodTimeline;
.super Landroidx/media3/common/Timeline;
.source "SinglePeriodTimeline.java"


# static fields
.field private static final MEDIA_ITEM:Landroidx/media3/common/MediaItem;

.field private static final UID:Ljava/lang/Object;


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final isDynamic:Z

.field private final isSeekable:Z

.field private final liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

.field private final manifest:Ljava/lang/Object;

.field private final mediaItem:Landroidx/media3/common/MediaItem;

.field private final periodDurationUs:J

.field private final presentationStartTimeMs:J

.field private final suppressPositionProjection:Z

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowPositionInPeriodUs:J

.field private final windowStartTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    .line 33
    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string v1, "SinglePeriodTimeline"

    .line 34
    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$Builder;->setUri(Landroid/net/Uri;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    const/16 v17, 0x0

    .line 233
    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V
    .locals 3

    move-object v0, p0

    .line 289
    invoke-direct {p0}, Landroidx/media3/common/Timeline;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowStartTimeMs:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    move-wide v1, p7

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    move-wide v1, p9

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    move-wide v1, p11

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    .line 301
    invoke-static/range {p19 .. p19}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/MediaItem;

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    return-void
.end method

.method public constructor <init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 21
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v17, 0x0

    sget-object v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->MEDIA_ITEM:Landroidx/media3/common/MediaItem;

    .line 211
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem;->buildUpon()Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    move-object/from16 v2, p19

    invoke-virtual {v1, v2}, Landroidx/media3/common/MediaItem$Builder;->setTag(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/media3/common/MediaItem$Builder;->build()Landroidx/media3/common/MediaItem;

    move-result-object v19

    if-eqz p17, :cond_0

    .line 212
    iget-object v0, v0, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v18, p18

    .line 199
    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V
    .locals 21

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v17, 0x0

    move-object/from16 v15, p13

    if-eqz p11, :cond_0

    .line 178
    iget-object v0, v15, Landroidx/media3/common/MediaItem;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    .line 165
    invoke-direct/range {v0 .. v20}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;Landroidx/media3/common/MediaItem$LiveConfiguration;)V

    return-void
.end method

.method public constructor <init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v13, p7

    move/from16 v15, p9

    move/from16 v16, p10

    move/from16 v17, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 123
    invoke-direct/range {v0 .. v19}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V
    .locals 14

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 94
    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Landroidx/media3/common/MediaItem;)V

    return-void
.end method

.method public constructor <init>(JZZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    .line 64
    invoke-direct/range {v0 .. v13}, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;-><init>(JJJJZZZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 0

    sget-object p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    if-eqz p3, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v2, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->periodDurationUs:J

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    neg-long v6, p0

    move-object v0, p2

    .line 353
    invoke-virtual/range {v0 .. v7}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 363
    invoke-static {p1, p0, v0}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    sget-object p0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->UID:Ljava/lang/Object;

    return-object p0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p1

    .line 313
    invoke-static {v3, v1, v2}, Landroidx/media3/common/util/Assertions;->checkIndex(III)I

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDefaultStartPositionUs:J

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->suppressPositionProjection:Z

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-eqz v3, :cond_1

    iget-wide v3, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    :goto_0
    move-wide/from16 v20, v5

    goto :goto_1

    :cond_0
    add-long v1, v1, p3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move-wide/from16 v20, v1

    .line 327
    :goto_1
    sget-object v8, Landroidx/media3/common/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v9, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->mediaItem:Landroidx/media3/common/MediaItem;

    iget-object v10, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->manifest:Ljava/lang/Object;

    iget-wide v11, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->presentationStartTimeMs:J

    iget-wide v13, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowStartTimeMs:J

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->elapsedRealtimeEpochOffsetMs:J

    move-wide v15, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isSeekable:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->isDynamic:Z

    move/from16 v18, v1

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->liveConfiguration:Landroidx/media3/common/MediaItem$LiveConfiguration;

    move-object/from16 v19, v1

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowDurationUs:J

    move-wide/from16 v22, v1

    const/16 v24, 0x0

    const/16 v25, 0x0

    iget-wide v0, v0, Landroidx/media3/exoplayer/source/SinglePeriodTimeline;->windowPositionInPeriodUs:J

    move-wide/from16 v26, v0

    move-object/from16 v7, p2

    invoke-virtual/range {v7 .. v27}, Landroidx/media3/common/Timeline$Window;->set(Ljava/lang/Object;Landroidx/media3/common/MediaItem;Ljava/lang/Object;JJJZZLandroidx/media3/common/MediaItem$LiveConfiguration;JJIIJ)Landroidx/media3/common/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
