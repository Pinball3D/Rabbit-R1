.class final Landroidx/media3/exoplayer/audio/AudioTimestampPoller;
.super Ljava/lang/Object;
.source "AudioTimestampPoller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;
    }
.end annotation


# static fields
.field private static final ERROR_POLL_INTERVAL_US:I = 0x7a120

.field private static final FAST_POLL_INTERVAL_US:I = 0x2710

.field private static final INITIALIZING_DURATION_US:I = 0x7a120

.field private static final SLOW_POLL_INTERVAL_US:I = 0x989680

.field private static final STATE_ERROR:I = 0x4

.field private static final STATE_INITIALIZING:I = 0x0

.field private static final STATE_NO_TIMESTAMP:I = 0x3

.field private static final STATE_TIMESTAMP:I = 0x1

.field private static final STATE_TIMESTAMP_ADVANCING:I = 0x2


# instance fields
.field private final audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

.field private initialTimestampPositionFrames:J

.field private initializeSystemTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private sampleIntervalUs:J

.field private state:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 105
    new-instance v0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 106
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    const/4 p1, 0x3

    .line 109
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    :goto_0
    return-void
.end method

.method private updateState(I)V
    .locals 6

    iput p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-wide/32 v0, 0x7a120

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    .line 264
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    const-wide/32 v0, 0x989680

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    :cond_2
    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 250
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    iput-wide v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    :goto_0
    return-void
.end method


# virtual methods
.method public acceptTimestamp()V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    :cond_0
    return-void
.end method

.method public getTimestampPositionFrames()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getTimestampSystemTimeUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz p0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public hasAdvancingTimestamp()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTimestamp()Z
    .locals 2

    iget p0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public maybePollTimestamp(J)Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->sampleIntervalUs:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->lastTimestampSampleTimeUs:J

    .line 129
    invoke-virtual {v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->maybeUpdateTimestamp()Z

    move-result v0

    iget v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->state:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    const/4 p1, 0x2

    if-eq v2, v4, :cond_4

    if-eq v2, p1, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p0, 0x4

    if-ne v2, p0, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    if-eqz v0, :cond_8

    .line 168
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_8

    .line 162
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object p2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 151
    invoke-virtual {p2}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_8

    .line 153
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    .line 156
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->reset()V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 133
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampSystemTimeUs()J

    move-result-wide p1

    iget-wide v2, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    cmp-long p1, p1, v2

    if-ltz p1, :cond_9

    iget-object p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    .line 135
    invoke-virtual {p1}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;->getTimestampPositionFrames()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initialTimestampPositionFrames:J

    .line 136
    invoke-direct {p0, v4}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    goto :goto_0

    :cond_7
    iget-wide v1, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->initializeSystemTimeUs:J

    sub-long/2addr p1, v1

    const-wide/32 v1, 0x7a120

    cmp-long p1, p1, v1

    if-lez p1, :cond_8

    .line 146
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    :cond_8
    :goto_0
    move v1, v0

    :cond_9
    :goto_1
    return v1
.end method

.method public rejectTimestamp()V
    .locals 1

    const/4 v0, 0x4

    .line 186
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->audioTimestamp:Landroidx/media3/exoplayer/audio/AudioTimestampPoller$AudioTimestampV19;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/audio/AudioTimestampPoller;->updateState(I)V

    :cond_0
    return-void
.end method
