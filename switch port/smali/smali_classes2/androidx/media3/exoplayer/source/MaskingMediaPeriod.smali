.class public final Landroidx/media3/exoplayer/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;
    }
.end annotation


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field public final id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field private listener:Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

.field private mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private final preparePositionUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    .line 129
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 130
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSource;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    if-eqz v2, :cond_0

    .line 132
    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 193
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 213
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 203
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 218
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionOverrideUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 173
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p0, :cond_0

    .line 233
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->listener:Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 166
    invoke-interface {v1, p0, v0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;->onPrepareError(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 238
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 39
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 245
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->listener:Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->id:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 247
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;->onPrepareComplete(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;)V

    :cond_0
    return-void
.end method

.method public overridePreparePositionUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    .line 148
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    .line 147
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 198
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 223
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 139
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSource;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 208
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionUs:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    iput-wide v3, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iget-object v0, v0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 187
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/media3/exoplayer/source/MediaPeriod;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 188
    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMediaSource(Landroidx/media3/exoplayer/source/MediaSource;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    return-void
.end method

.method public setPrepareListener(Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MaskingMediaPeriod;->listener:Landroidx/media3/exoplayer/source/MaskingMediaPeriod$PrepareListener;

    return-void
.end method
