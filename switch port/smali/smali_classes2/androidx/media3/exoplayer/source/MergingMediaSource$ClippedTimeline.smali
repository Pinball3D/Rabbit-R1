.class final Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippedTimeline"
.end annotation


# instance fields
.field private final periodDurationsUs:[J

.field private final windowDurationsUs:[J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Timeline;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 318
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 319
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v0

    .line 320
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getWindowCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 321
    new-instance v1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 323
    invoke-virtual {p1, v3, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Landroidx/media3/common/Timeline$Window;->durationUs:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    .line 326
    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 327
    new-instance v1, Landroidx/media3/common/Timeline$Period;

    invoke-direct {v1}, Landroidx/media3/common/Timeline$Period;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    .line 329
    invoke-virtual {p1, v2, v1, v3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 330
    iget-object v3, v1, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 332
    :cond_1
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    :goto_2
    aput-wide v3, v5, v2

    .line 333
    iget-wide v3, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 334
    iget v4, v1, Landroidx/media3/common/Timeline$Period;->windowIndex:I

    aget-wide v5, v3, v4

    iget-wide v7, v1, Landroidx/media3/common/Timeline$Period;->durationUs:J

    iget-object v9, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    aget-wide v9, v9, v2

    sub-long/2addr v7, v9

    sub-long/2addr v5, v7

    aput-wide v5, v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 0

    .line 352
    invoke-super {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 353
    aget-wide p0, p0, p1

    iput-wide p0, p2, Landroidx/media3/common/Timeline$Period;->durationUs:J

    return-object p2
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 0

    .line 341
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/ForwardingTimeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 342
    aget-wide p0, p0, p1

    iput-wide p0, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    .line 344
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, p3

    if-eqz p0, :cond_1

    iget-wide p0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    cmp-long p0, p0, p3

    if-nez p0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_1

    .line 345
    :cond_1
    :goto_0
    iget-wide p0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 346
    :goto_1
    iput-wide p0, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    return-object p2
.end method
