.class final Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TimeOffsetMediaPeriod"
.end annotation


# instance fields
.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final timeOffsetUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;J)V
    .locals 0

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-wide p2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;)Landroidx/media3/exoplayer/source/MediaPeriod;
    .locals 0

    .line 305
    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    return-object p0
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    .line 411
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public discardBuffer(JZ)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    .line 371
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    .line 389
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 395
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 403
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 335
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 330
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 416
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result p0

    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 325
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 431
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 305
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 426
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p2, v0

    .line 320
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 5

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 376
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v2, v0

    :goto_0
    return-wide v2
.end method

.method public reevaluateBuffer(J)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    .line 421
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v1, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long/2addr p1, v1

    .line 384
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 345
    array-length v2, v1

    new-array v2, v2, [Landroidx/media3/exoplayer/source/SampleStream;

    const/4 v10, 0x0

    move v3, v10

    .line 346
    :goto_0
    array-length v4, v1

    const/4 v11, 0x0

    if-ge v3, v4, :cond_1

    .line 347
    aget-object v4, v1, v3

    check-cast v4, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->getChildStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v11

    :cond_0
    aput-object v11, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    sub-long v8, p5, v4

    move-object v4, p1

    move-object v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    .line 351
    invoke-interface/range {v3 .. v9}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v3

    .line 357
    :goto_1
    array-length v5, v1

    if-ge v10, v5, :cond_5

    .line 358
    aget-object v5, v2, v10

    if-nez v5, :cond_2

    .line 360
    aput-object v11, v1, v10

    goto :goto_2

    .line 361
    :cond_2
    aget-object v6, v1, v10

    if-eqz v6, :cond_3

    check-cast v6, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;

    .line 362
    invoke-virtual {v6}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;->getChildStream()Landroidx/media3/exoplayer/source/SampleStream;

    move-result-object v6

    if-eq v6, v5, :cond_4

    .line 363
    :cond_3
    new-instance v6, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;

    iget-wide v7, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    invoke-direct {v6, v5, v7, v8}, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetSampleStream;-><init>(Landroidx/media3/exoplayer/source/SampleStream;J)V

    aput-object v6, v1, v10

    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    iget-wide v0, v0, Landroidx/media3/exoplayer/source/MergingMediaPeriod$TimeOffsetMediaPeriod;->timeOffsetUs:J

    add-long/2addr v3, v0

    return-wide v3
.end method
