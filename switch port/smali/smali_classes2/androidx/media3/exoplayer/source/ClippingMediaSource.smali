.class public final Landroidx/media3/exoplayer/source/ClippingMediaSource;
.super Landroidx/media3/exoplayer/source/WrappingMediaSource;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;,
        Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    }
.end annotation


# instance fields
.field private final allowDynamicClippingUpdates:Z

.field private clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field private clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

.field private final enableInitialDiscontinuity:Z

.field private final endUs:J

.field private final mediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/ClippingMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private periodEndUs:J

.field private periodStartUs:J

.field private final relativeToDefaultPosition:Z

.field private final startUs:J

.field private final window:Landroidx/media3/common/Timeline$Window;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;J)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 134
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;JJ)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 115
    invoke-direct/range {v0 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;JJZZZ)V
    .locals 2

    .line 183
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaSource;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/WrappingMediaSource;-><init>(Landroidx/media3/exoplayer/source/MediaSource;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 184
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    iput-wide p4, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iput-boolean p7, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    iput-boolean p8, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 191
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    return-void
.end method

.method private refreshClippedTimeline(Landroidx/media3/common/Timeline;)V
    .locals 15

    move-object v1, p0

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    .line 241
    invoke-virtual {v4, v2, v0}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 242
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getPositionInFirstPeriodUs()J

    move-result-wide v5

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    const-wide/high16 v7, -0x8000000000000000L

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    sub-long/2addr v9, v5

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v11, v7

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    sub-long/2addr v7, v5

    :goto_0
    move-wide v5, v9

    goto :goto_4

    :cond_2
    :goto_1
    iget-wide v9, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->startUs:J

    iget-wide v11, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    iget-boolean v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->relativeToDefaultPosition:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->window:Landroidx/media3/common/Timeline$Window;

    .line 247
    invoke-virtual {v0}, Landroidx/media3/common/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v13

    add-long/2addr v9, v13

    add-long/2addr v11, v13

    :cond_3
    add-long v13, v5, v9

    iput-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->endUs:J

    cmp-long v0, v13, v7

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    add-long v7, v5, v11

    :goto_2
    iput-wide v7, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 256
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_5

    iget-object v5, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-wide v6, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v13, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    invoke-virtual {v5, v6, v7, v13, v14}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->updateClipping(JJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-wide v5, v9

    move-wide v7, v11

    .line 269
    :goto_4
    :try_start_0
    new-instance v0, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;-><init>(Landroidx/media3/common/Timeline;JJ)V

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;
    :try_end_0
    .catch Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshSourceInfo(Landroidx/media3/common/Timeline;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    :goto_5
    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v3, v1, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->setClippingError(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method


# virtual methods
.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 8

    .line 204
    new-instance v7, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 206
    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->enableInitialDiscontinuity:Z

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodStartUs:J

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->periodEndUs:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;-><init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    .line 199
    invoke-super {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->maybeThrowSourceInfoRefreshError()V

    return-void

    .line 197
    :cond_0
    throw v0
.end method

.method protected onChildSourceInfoRefreshed(Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    return-void
.end method

.method public releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 216
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 217
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->mediaPeriods:Ljava/util/ArrayList;

    .line 218
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->allowDynamicClippingUpdates:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    .line 219
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;->timeline:Landroidx/media3/common/Timeline;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaSource;->refreshClippedTimeline(Landroidx/media3/common/Timeline;)V

    :cond_0
    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroidx/media3/exoplayer/source/WrappingMediaSource;->releaseSourceInternal()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaSource;->clippingTimeline:Landroidx/media3/exoplayer/source/ClippingMediaSource$ClippingTimeline;

    return-void
.end method
