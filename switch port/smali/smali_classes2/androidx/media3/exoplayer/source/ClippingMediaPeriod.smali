.class public final Landroidx/media3/exoplayer/source/ClippingMediaPeriod;
.super Ljava/lang/Object;
.source "ClippingMediaPeriod.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaPeriod;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;
    }
.end annotation


# instance fields
.field private callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

.field private clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

.field endUs:J

.field public final mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

.field private pendingInitialDiscontinuityPositionUs:J

.field private sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

.field startUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaPeriod;ZJJ)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    const/4 p1, 0x0

    new-array p1, p1, [Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    return-void
.end method

.method private clipSeekParameters(JLandroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/exoplayer/SeekParameters;
    .locals 10

    .line 254
    iget-wide v0, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    sub-long v4, p1, v4

    .line 255
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 257
    iget-wide v2, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long p0, v6, v8

    if-nez p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    move-wide v6, p0

    goto :goto_0

    :cond_0
    sub-long/2addr v6, p1

    .line 258
    :goto_0
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    .line 262
    iget-wide v2, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    iget-wide v2, p3, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long p2, p0, v2

    if-nez p2, :cond_1

    return-object p3

    .line 266
    :cond_1
    new-instance p2, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {p2, v0, v1, p0, p1}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    return-object p2
.end method

.method private static shouldKeepInitialDiscontinuity(J[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 282
    array-length p0, p2

    move v0, p1

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->getSelectedFormat()Landroidx/media3/common/Format;

    move-result-object v1

    .line 285
    iget-object v2, v1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v2, v1}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 226
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 153
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J
    .locals 3

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 210
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->clipSeekParameters(JLandroidx/media3/exoplayer/SeekParameters;)Landroidx/media3/exoplayer/SeekParameters;

    move-result-object p3

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 211
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->getAdjustedSeekPositionUs(JLandroidx/media3/exoplayer/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 181
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 216
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 111
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->getTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object p0

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 231
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->isLoading()Z

    move-result p0

    return p0
.end method

.method isPendingInitialDiscontinuity()Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 106
    invoke-interface {p0}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void

    .line 104
    :cond_0
    throw v0
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 246
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .locals 0

    .line 37
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    .line 241
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaPeriod$Callback;->onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->callback:Landroidx/media3/exoplayer/source/MediaPeriod$Callback;

    iget-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 98
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 9

    .line 163
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    .line 167
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->readDiscontinuity()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-eqz p0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 170
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    cmp-long v0, v3, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 174
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-wide v5, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long p0, v5, v7

    if-eqz p0, :cond_5

    cmp-long p0, v3, v5

    if-gtz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 175
    :cond_5
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-wide v3
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 158
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 192
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 194
    invoke-virtual {v4}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->clearSentEos()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 197
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/MediaPeriod;->seekToUs(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p2, p0, v3

    if-eqz p2, :cond_2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 198
    :cond_3
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    return-wide v0
.end method

.method public selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    .line 121
    array-length v2, v1

    new-array v2, v2, [Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    iput-object v2, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 122
    array-length v2, v1

    new-array v9, v2, [Landroidx/media3/exoplayer/source/SampleStream;

    const/4 v10, 0x0

    move v2, v10

    .line 123
    :goto_0
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 124
    aget-object v4, v1, v2

    check-cast v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aput-object v4, v3, v2

    if-eqz v4, :cond_0

    .line 125
    iget-object v11, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    :cond_0
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->mediaPeriod:Landroidx/media3/exoplayer/source/MediaPeriod;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    .line 128
    invoke-interface/range {v2 .. v8}, Landroidx/media3/exoplayer/source/MediaPeriod;->selectTracks([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;[Z[Landroidx/media3/exoplayer/source/SampleStream;[ZJ)J

    move-result-wide v2

    .line 131
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->isPendingInitialDiscontinuity()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_2

    move-object v6, p1

    .line 133
    invoke-static {v4, v5, p1}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->shouldKeepInitialDiscontinuity(J[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->pendingInitialDiscontinuityPositionUs:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_4

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget-wide v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v10

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    .line 136
    :goto_3
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 140
    :goto_4
    array-length v4, v1

    if-ge v10, v4, :cond_8

    .line 141
    aget-object v4, v9, v10

    if-nez v4, :cond_5

    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 142
    aput-object v11, v4, v10

    goto :goto_5

    :cond_5
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 143
    aget-object v4, v4, v10

    if-eqz v4, :cond_6

    iget-object v4, v4, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;->childStream:Landroidx/media3/exoplayer/source/SampleStream;

    aget-object v5, v9, v10

    if-eq v4, v5, :cond_7

    :cond_6
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 144
    new-instance v5, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    aget-object v6, v9, v10

    invoke-direct {v5, p0, v6}, Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;-><init>(Landroidx/media3/exoplayer/source/ClippingMediaPeriod;Landroidx/media3/exoplayer/source/SampleStream;)V

    aput-object v5, v4, v10

    :cond_7
    :goto_5
    iget-object v4, v0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->sampleStreams:[Landroidx/media3/exoplayer/source/ClippingMediaPeriod$ClippingSampleStream;

    .line 146
    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    return-wide v2
.end method

.method public setClippingError(Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->clippingError:Landroidx/media3/exoplayer/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method

.method public updateClipping(JJ)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->startUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/source/ClippingMediaPeriod;->endUs:J

    return-void
.end method
