.class final Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;
    }
.end annotation


# static fields
.field private static final FORCE_RESET_WORKAROUND_TIMEOUT_MS:J = 0xc8L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_LATENCY_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MODE_SWITCH_SMOOTHING_DURATION_US:J = 0xf4240L

.field private static final PLAYSTATE_PAUSED:I = 0x2

.field private static final PLAYSTATE_PLAYING:I = 0x3

.field private static final PLAYSTATE_STOPPED:I = 0x1

.field private static final RAW_PLAYBACK_HEAD_POSITION_UPDATE_INTERVAL_MS:J = 0x5L


# instance fields
.field private audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

.field private audioTrack:Landroid/media/AudioTrack;

.field private audioTrackPlaybackSpeed:F

.field private bufferSize:I

.field private bufferSizeUs:J

.field private endPlaybackHeadPosition:J

.field private forceResetWorkaroundTimeMs:J

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private hasData:Z

.field private isOutputPcm:Z

.field private lastLatencySampleTimeUs:J

.field private lastPlayheadSampleTimeUs:J

.field private lastPositionUs:J

.field private lastRawPlaybackHeadPositionSampleTimeMs:J

.field private lastSampleUsedGetTimestampMode:Z

.field private lastSystemTimeUs:J

.field private latencyUs:J

.field private final listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

.field private needsPassthroughWorkarounds:Z

.field private nextPlayheadOffsetIndex:I

.field private notifiedPositionIncreasing:Z

.field private outputPcmFrameSize:I

.field private outputSampleRate:I

.field private passthroughWorkaroundPauseOffset:J

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private previousModePositionUs:J

.field private previousModeSystemTimeUs:J

.field private rawPlaybackHeadPosition:J

.field private rawPlaybackHeadWrapCount:J

.field private smoothedPlayheadOffsetUs:J

.field private stopPlaybackHeadPosition:J

.field private stopTimestampUs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;)V
    .locals 3

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 209
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    .line 211
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    return-void
.end method

.method private forceHasPendingData()Z
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 560
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 561
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getPlaybackHeadPosition()J
    .locals 6

    .line 586
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    sub-long/2addr v0, v2

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 591
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 592
    invoke-static {v0, v1, v2}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    add-long/2addr v4, v0

    .line 593
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 597
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->updateRawPlaybackHeadPosition(J)V

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastRawPlaybackHeadPositionSampleTimeMs:J

    :cond_1
    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const/16 p0, 0x20

    shl-long/2addr v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getPlaybackHeadPositionUs()J
    .locals 2

    .line 574
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybePollAndCheckTimestamp(J)V
    .locals 11

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 494
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 495
    invoke-virtual {v0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->maybePollTimestamp(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v5

    .line 501
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v3

    .line 502
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v9

    sub-long v1, v5, p1

    .line 503
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v1, v1, v7

    if-lez v1, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    .line 504
    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onSystemTimeUsMismatch(JJJJ)V

    .line 506
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 508
    invoke-static {v3, v4, v1}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 507
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    move-wide v7, p1

    .line 510
    invoke-interface/range {v2 .. v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionFramesMismatch(JJJJ)V

    .line 512
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->rejectTimestamp()V

    goto :goto_0

    .line 514
    :cond_2
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->acceptTimestamp()V

    :goto_0
    return-void
.end method

.method private maybeSampleSyncParams()V
    .locals 10

    .line 461
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7530

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 463
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    iget v7, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v8, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 470
    invoke-static {v2, v3, v8}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v2

    sub-long/2addr v2, v0

    aput-wide v2, v6, v7

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    .line 472
    rem-int/2addr v2, v3

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    :cond_1
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-ge v2, v3, :cond_2

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    iget-object v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsets:[J

    .line 479
    aget-wide v6, v6, v2

    int-to-long v8, v3

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    if-eqz v2, :cond_3

    return-void

    .line 489
    :cond_3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->maybePollAndCheckTimestamp(J)V

    .line 490
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->maybeUpdateLatency(J)V

    return-void
.end method

.method private maybeUpdateLatency(J)V
    .locals 6

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 526
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/16 v2, 0x0

    .line 529
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    iget-object v4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 532
    invoke-interface {v4, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onInvalidLatency(J)V

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getLatencyMethod:Ljava/lang/reflect/Method;

    :cond_0
    :goto_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    :cond_1
    return-void
.end method

.method private static needsPassthroughWorkarounds(I)Z
    .locals 2

    .line 569
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private resetSyncParams()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    iput v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->nextPlayheadOffsetIndex:I

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPlayheadSampleTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    iput-boolean v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    return-void
.end method

.method private updateRawPlaybackHeadPosition(J)V
    .locals 10

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 604
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 605
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 610
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v2, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    :cond_1
    iget-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    add-long/2addr v2, v6

    .line 621
    :cond_2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1d

    if-gt v0, v6, :cond_5

    cmp-long v0, v2, v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_4

    iget-wide v8, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long v0, v8, v4

    if-lez v0, :cond_4

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    :cond_3
    return-void

    :cond_4
    iput-wide v6, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    :cond_5
    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    cmp-long p1, p1, v2

    if-lez p1, :cond_6

    iget-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    :cond_6
    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    return-void
.end method


# virtual methods
.method public getAvailableBufferSize(J)I
    .locals 4

    .line 397
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 269
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 270
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->maybeSampleSyncParams()V

    .line 275
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 277
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 278
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->hasAdvancingTimestamp()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampPositionFrames()J

    move-result-wide v7

    iget v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 282
    invoke-static {v7, v8, v9}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide v7

    .line 283
    invoke-virtual {v5}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->getTimestampSystemTimeUs()J

    move-result-wide v9

    sub-long v9, v1, v9

    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 285
    invoke-static {v9, v10, v5}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_1

    :cond_1
    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->playheadOffsetCount:I

    if-nez v5, :cond_2

    .line 290
    invoke-direct/range {p0 .. p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPositionUs()J

    move-result-wide v7

    goto :goto_0

    :cond_2
    iget-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->smoothedPlayheadOffsetUs:J

    add-long/2addr v7, v1

    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 296
    invoke-static {v7, v8, v5}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v7

    :goto_0
    if-nez p1, :cond_3

    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    .line 300
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :cond_3
    :goto_1
    iget-boolean v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    if-eq v5, v6, :cond_4

    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    :cond_4
    iget-wide v9, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModeSystemTimeUs:J

    sub-long v9, v1, v9

    const-wide/32 v11, 0xf4240

    cmp-long v5, v9, v11

    if-gez v5, :cond_5

    iget-wide v13, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->previousModePositionUs:J

    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 315
    invoke-static {v9, v10, v5}, Landroidx/media3/common/util/Util;->getMediaDurationForPlayoutDuration(JF)J

    move-result-wide v15

    add-long/2addr v13, v15

    mul-long/2addr v9, v3

    .line 318
    div-long/2addr v9, v11

    mul-long/2addr v7, v9

    sub-long v9, v3, v9

    mul-long/2addr v9, v13

    add-long/2addr v7, v9

    .line 321
    div-long/2addr v7, v3

    :cond_5
    iget-boolean v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    if-nez v3, :cond_6

    iget-wide v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    cmp-long v5, v7, v3

    if-lez v5, :cond_6

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->notifiedPositionIncreasing:Z

    sub-long v3, v7, v3

    .line 326
    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    iget v5, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    .line 328
    invoke-static {v3, v4, v5}, Landroidx/media3/common/util/Util;->getPlayoutDurationForMediaDuration(JF)J

    move-result-wide v3

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v3

    sub-long/2addr v9, v3

    iget-object v3, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    .line 332
    invoke-interface {v3, v9, v10}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onPositionAdvancing(J)V

    :cond_6
    iput-wide v1, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSystemTimeUs:J

    iput-wide v7, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastPositionUs:J

    iput-boolean v6, v0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastSampleUsedGetTimestampMode:Z

    return-wide v7
.end method

.method public handleEndOfStream(J)V
    .locals 4

    .line 416
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopPlaybackHeadPosition:J

    .line 417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->endPlaybackHeadPosition:J

    return-void
.end method

.method public hasPendingData(J)Z
    .locals 4

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getCurrentPositionUs(Z)J

    move-result-wide v1

    iget v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    .line 429
    invoke-static {v1, v2, v3}, Landroidx/media3/common/util/Util;->durationUsToSampleCount(JI)J

    move-result-wide v1

    cmp-long p1, p1, v1

    if-gtz p1, :cond_0

    .line 430
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceHasPendingData()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 349
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStalled(J)Z
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, p1, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public mayHandleBuffer(J)Z
    .locals 8

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    .line 360
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iput-boolean v3, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    .line 373
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->getPlaybackHeadPosition()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-boolean v1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    .line 379
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasPendingData(J)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->listener:Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;

    iget p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    .line 381
    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker$Listener;->onUnderrun(IJ)V

    :cond_2
    return v2
.end method

.method public pause()Z
    .locals 4

    .line 439
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    iget-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 443
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 1

    .line 455
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    return-void
.end method

.method public setAudioTrack(Landroid/media/AudioTrack;ZIII)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrack:Landroid/media/AudioTrack;

    iput p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputPcmFrameSize:I

    iput p5, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSize:I

    .line 239
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 240
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 241
    invoke-static {p3}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p1

    :goto_0
    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->needsPassthroughWorkarounds:Z

    .line 242
    invoke-static {p3}, Landroidx/media3/common/util/Util;->isEncodingLinearPcm(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->isOutputPcm:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_1

    .line 245
    div-int/2addr p5, p4

    int-to-long p2, p5

    iget p4, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->outputSampleRate:I

    invoke-static {p2, p3, p4}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p2

    goto :goto_1

    :cond_1
    move-wide p2, v0

    :goto_1
    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->bufferSizeUs:J

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadPosition:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->rawPlaybackHeadWrapCount:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->passthroughWorkaroundPauseOffset:J

    iput-boolean p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->hasData:Z

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->stopTimestampUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->forceResetWorkaroundTimeMs:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->lastLatencySampleTimeUs:J

    iput-wide p2, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->latencyUs:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    return-void
.end method

.method public setAudioTrackPlaybackSpeed(F)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTrackPlaybackSpeed:F

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    .line 265
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->resetSyncParams()V

    return-void
.end method

.method public start()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTrackPositionTracker;->audioTimestampPoller:Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    .line 344
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    return-void
.end method
