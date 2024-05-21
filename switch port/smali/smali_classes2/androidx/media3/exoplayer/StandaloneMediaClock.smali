.class public final Landroidx/media3/exoplayer/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# instance fields
.field private baseElapsedMs:J

.field private baseUs:J

.field private final clock:Landroidx/media3/common/util/Clock;

.field private playbackParameters:Landroidx/media3/common/PlaybackParameters;

.field private started:Z


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    .line 44
    sget-object p1, Landroidx/media3/common/PlaybackParameters;->DEFAULT:Landroidx/media3/common/PlaybackParameters;

    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-object p0
.end method

.method public getPositionUs()J
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseUs:J

    iget-boolean v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    .line 79
    invoke-interface {v2}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseElapsedMs:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 80
    iget v4, v4, Landroidx/media3/common/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 81
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->msToUs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    .line 85
    invoke-virtual {p0, v2, v3}, Landroidx/media3/common/PlaybackParameters;->getMediaTimeUsForPlayoutTimeMs(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public resetPosition(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseUs:J

    iget-boolean p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    .line 71
    invoke-interface {p1}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseElapsedMs:J

    :cond_0
    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    :cond_0
    iput-object p1, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->playbackParameters:Landroidx/media3/common/PlaybackParameters;

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->clock:Landroidx/media3/common/util/Clock;

    .line 50
    invoke-interface {v0}, Landroidx/media3/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->baseElapsedMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method
