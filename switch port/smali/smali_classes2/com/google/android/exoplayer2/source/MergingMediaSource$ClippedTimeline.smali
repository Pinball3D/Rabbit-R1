.class final Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;
.super Lcom/google/android/exoplayer2/source/ForwardingTimeline;
.source "MergingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippedTimeline"
.end annotation


# instance fields
.field private final periodDurationsUs:[J

.field private final windowDurationsUs:[J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/Timeline;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Timeline;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplayer2/Timeline;)V

    .line 317
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v0

    .line 318
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 319
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Window;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 321
    invoke-virtual {p1, v3, v1}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;)Lcom/google/android/exoplayer2/Timeline$Window;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Timeline;->getPeriodCount()I

    move-result v0

    .line 324
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 325
    new-instance v1, Lcom/google/android/exoplayer2/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Timeline$Period;-><init>()V

    :goto_1
    if-ge v2, v0, :cond_3

    const/4 v3, 0x1

    .line 327
    invoke-virtual {p1, v2, v1, v3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    .line 328
    iget-object v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v3, v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 330
    :cond_1
    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    :goto_2
    aput-wide v3, v5, v2

    .line 331
    iget-wide v3, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 332
    iget v4, v1, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    aget-wide v5, v3, v4

    iget-wide v7, v1, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

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
.method public getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 0

    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->periodDurationsUs:[J

    .line 351
    aget-wide p0, p0, p1

    iput-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->durationUs:J

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 0

    .line 339
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;J)Lcom/google/android/exoplayer2/Timeline$Window;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaSource$ClippedTimeline;->windowDurationsUs:[J

    .line 340
    aget-wide p0, p0, p1

    iput-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    .line 342
    iget-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, p0, p3

    if-eqz p0, :cond_1

    iget-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    cmp-long p0, p0, p3

    if-nez p0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    iget-wide p3, p2, Lcom/google/android/exoplayer2/Timeline$Window;->durationUs:J

    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_1

    .line 343
    :cond_1
    :goto_0
    iget-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    .line 344
    :goto_1
    iput-wide p0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->defaultPositionUs:J

    return-object p2
.end method
