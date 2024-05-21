.class final Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
.super Landroidx/media3/exoplayer/source/ForwardingTimeline;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ClippingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClippingTimeline"
.end annotation


# instance fields
.field private final durationUs:J

.field private final endUs:J

.field private final isDynamic:Z

.field private final startUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/common/Timeline;JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;
        }
    .end annotation

    .line 301
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ForwardingTimeline;-><init>(Landroidx/media3/common/Timeline;)V

    .line 302
    invoke-virtual {p1}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    .line 305
    new-instance v0, Landroidx/media3/common/Timeline$Window;

    invoke-direct {v0}, Landroidx/media3/common/Timeline$Window;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 306
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 307
    iget-boolean v0, p1, Landroidx/media3/common/Timeline$Window;->isPlaceholder:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Landroidx/media3/common/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    new-instance p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_2

    .line 310
    iget-wide p4, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 311
    :goto_1
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    .line 312
    iget-wide v3, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long v0, p4, v3

    if-lez v0, :cond_3

    .line 313
    iget-wide p4, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    :cond_3
    cmp-long v0, p2, p4

    if-gtz v0, :cond_4

    goto :goto_2

    .line 316
    :cond_4
    new-instance p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p0

    :cond_5
    :goto_2
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long v0, p4, v5

    if-nez v0, :cond_6

    move-wide p2, v5

    goto :goto_3

    :cond_6
    sub-long p2, p4, p2

    :goto_3
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 322
    iget-boolean p2, p1, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    if-eqz p2, :cond_8

    if-eqz v0, :cond_7

    iget-wide p2, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long p2, p2, v5

    if-eqz p2, :cond_8

    iget-wide p1, p1, Landroidx/media3/common/Timeline$Window;->durationUs:J

    cmp-long p1, p4, p1

    if-nez p1, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    return-void

    .line 303
    :cond_9
    new-instance p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;
    .locals 12

    .line 352
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Landroidx/media3/common/Timeline;->getPeriod(ILandroidx/media3/common/Timeline$Period;Z)Landroidx/media3/common/Timeline$Period;

    .line 353
    invoke-virtual {p2}, Landroidx/media3/common/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long v10, v0, v2

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p0, v0

    if-nez p3, :cond_0

    move-wide v8, v0

    goto :goto_0

    :cond_0
    sub-long/2addr p0, v10

    move-wide v8, p0

    .line 356
    :goto_0
    iget-object v5, p2, Landroidx/media3/common/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v6, p2, Landroidx/media3/common/Timeline$Period;->uid:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Landroidx/media3/common/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJ)Landroidx/media3/common/Timeline$Period;

    move-result-object p0

    return-object p0
.end method

.method public getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;
    .locals 4

    .line 330
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;J)Landroidx/media3/common/Timeline$Window;

    .line 331
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->positionInFirstPeriodUs:J

    iget-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->durationUs:J

    .line 332
    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->durationUs:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->isDynamic:Z

    .line 333
    iput-boolean p1, p2, Landroidx/media3/common/Timeline$Window;->isDynamic:Z

    .line 334
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v0

    if-eqz p1, :cond_1

    .line 335
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    cmp-long p1, p3, v0

    .line 337
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->endUs:J

    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    .line 338
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    sub-long/2addr p3, v2

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->defaultPositionUs:J

    :cond_1
    iget-wide p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->startUs:J

    .line 340
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    .line 341
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    cmp-long p3, p3, v0

    if-eqz p3, :cond_2

    .line 342
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    add-long/2addr p3, p0

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->presentationStartTimeMs:J

    .line 344
    :cond_2
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    cmp-long p3, p3, v0

    if-eqz p3, :cond_3

    .line 345
    iget-wide p3, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    add-long/2addr p3, p0

    iput-wide p3, p2, Landroidx/media3/common/Timeline$Window;->windowStartTimeMs:J

    :cond_3
    return-object p2
.end method
