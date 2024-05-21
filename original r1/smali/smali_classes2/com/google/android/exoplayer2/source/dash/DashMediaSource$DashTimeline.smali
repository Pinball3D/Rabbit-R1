.class final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DashTimeline"
.end annotation


# instance fields
.field private final elapsedRealtimeEpochOffsetMs:J

.field private final firstPeriodId:I

.field private final liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

.field private final manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

.field private final mediaItem:Lcom/google/android/exoplayer2/MediaItem;

.field private final offsetInFirstPeriodUs:J

.field private final presentationStartTimeMs:J

.field private final windowDefaultStartPositionUs:J

.field private final windowDurationUs:J

.field private final windowStartTimeMs:J


# direct methods
.method public constructor <init>(JJJIJJJLcom/google/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/google/android/exoplayer2/MediaItem;Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, p16

    .line 1167
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    .line 1168
    iget-boolean v3, v1, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    :goto_0
    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move-wide v3, p1

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    move-wide v3, p3

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    move-wide v3, p5

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    move v3, p7

    iput v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    move-wide v3, p8

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v3, p10

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v3, p12

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    return-void
.end method

.method private getAdjustedWindowDefaultStartPositionUs(J)J
    .locals 9

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDefaultStartPositionUs:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1239
    invoke-static {v2}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    add-long/2addr v0, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    :cond_1
    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    add-long/2addr p1, v0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    const/4 v5, 0x0

    .line 1252
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    move v4, v5

    :goto_0
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1253
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    cmp-long v8, p1, v6

    if-ltz v8, :cond_2

    sub-long/2addr p1, v6

    add-int/lit8 v4, v4, 0x1

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1257
    invoke-virtual {v6, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1260
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p0

    const/4 v4, 0x2

    .line 1261
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_3

    return-wide v0

    .line 1269
    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    .line 1270
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1271
    invoke-interface {p0, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 1275
    :cond_4
    invoke-interface {p0, p1, p2, v6, v7}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getSegmentNum(JJ)J

    move-result-wide v2

    .line 1277
    invoke-interface {p0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sub-long/2addr v0, p1

    :cond_5
    :goto_1
    return-wide v0
.end method

.method private static isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z
    .locals 4

    .line 1288
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->durationMs:J

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 2

    .line 1229
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1232
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_2

    .line 1234
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result p0

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 11

    .line 1188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1189
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p3, :cond_1

    iget p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr p3, p1

    .line 1190
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1195
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v7

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1196
    invoke-virtual {p3, p1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplayer2/source/dash/manifest/Period;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Period;->startMs:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v0

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    sub-long v9, v0, p0

    move-object v3, p2

    .line 1191
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/exoplayer2/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/google/android/exoplayer2/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getPeriodCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result p0

    return p0
.end method

.method public getUidOfPeriod(I)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    .line 1283
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    iget p0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->firstPeriodId:I

    add-int/2addr p0, p1

    .line 1284
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v13, 0x1

    move/from16 v3, p1

    .line 1207
    invoke-static {v3, v2, v13}, Lcom/google/android/exoplayer2/util/Assertions;->checkIndex(III)I

    move-wide/from16 v2, p3

    .line 1209
    invoke-direct {v0, v2, v3}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getAdjustedWindowDefaultStartPositionUs(J)J

    move-result-wide v14

    .line 1210
    sget-object v2, Lcom/google/android/exoplayer2/Timeline$Window;->SINGLE_WINDOW_UID:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->mediaItem:Lcom/google/android/exoplayer2/MediaItem;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->manifest:Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;

    move-object v4, v12

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->presentationStartTimeMs:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->elapsedRealtimeEpochOffsetMs:J

    const/4 v11, 0x1

    .line 1218
    invoke-static {v12}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->isMovingLiveWindow(Lcom/google/android/exoplayer2/source/dash/manifest/DashManifest;)Z

    move-result v12

    iget-object v13, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->liveConfiguration:Lcom/google/android/exoplayer2/MediaItem$LiveConfiguration;

    const/16 v19, 0x1

    move/from16 p2, v12

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->windowDurationUs:J

    move-wide/from16 v16, v11

    const/16 v18, 0x0

    .line 1223
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->getPeriodCount()I

    move-result v11

    add-int/lit8 v19, v11, -0x1

    iget-wide v11, v0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$DashTimeline;->offsetInFirstPeriodUs:J

    move-wide/from16 v20, v11

    move/from16 v12, p2

    const/4 v11, 0x1

    .line 1210
    invoke-virtual/range {v1 .. v21}, Lcom/google/android/exoplayer2/Timeline$Window;->set(Ljava/lang/Object;Lcom/google/android/exoplayer2/MediaItem;Ljava/lang/Object;JJJZZLcom/google/android/exoplayer2/MediaItem$LiveConfiguration;JJIIJ)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v0

    return-object v0
.end method

.method public getWindowCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
