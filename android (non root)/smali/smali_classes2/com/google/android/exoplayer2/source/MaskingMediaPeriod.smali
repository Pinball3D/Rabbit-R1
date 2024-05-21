.class public final Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/MediaPeriod;
.implements Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;
    }
.end annotation


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

.field public final id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field private listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;

.field private mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

.field private mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

.field private notifiedPrepareError:Z

.field private preparePositionOverrideUs:J

.field private final preparePositionUs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method private getPreparePositionWithOverride(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

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

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p0, :cond_0

    .line 226
    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    .line 127
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 128
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/MediaSource;->createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    if-eqz v2, :cond_0

    .line 130
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 191
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 211
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 201
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 216
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreparePositionOverrideUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-wide v0
.end method

.method public getPreparePositionUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    return-wide v0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 171
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p0, :cond_0

    .line 231
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->isLoading()Z

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->maybeThrowPrepareError()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-eqz v0, :cond_1

    .line 156
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/MediaSource;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->notifiedPrepareError:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 164
    invoke-interface {v1, p0, v0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;->onPrepareError(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    throw v0
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 236
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    .line 38
    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    .line 243
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 245
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;->onPrepareComplete(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V

    :cond_0
    return-void
.end method

.method public overridePreparePositionUs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    return-void
.end method

.method public prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->callback:Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    .line 146
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->getPreparePositionWithOverride(J)J

    move-result-wide p2

    .line 145
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/MediaPeriod;->prepare(Lcom/google/android/exoplayer2/source/MediaPeriod$Callback;J)V

    :cond_0
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 196
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 221
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public releasePeriod()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    .line 137
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/MediaSource;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/MediaSource;->releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V

    :cond_0
    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 206
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/MediaPeriod;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionUs:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->preparePositionOverrideUs:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaPeriod:Lcom/google/android/exoplayer2/source/MediaPeriod;

    .line 185
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/source/MediaPeriod;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    .line 186
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMediaSource(Lcom/google/android/exoplayer2/source/MediaSource;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->mediaSource:Lcom/google/android/exoplayer2/source/MediaSource;

    return-void
.end method

.method public setPrepareListener(Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MaskingMediaPeriod;->listener:Lcom/google/android/exoplayer2/source/MaskingMediaPeriod$PrepareListener;

    return-void
.end method
