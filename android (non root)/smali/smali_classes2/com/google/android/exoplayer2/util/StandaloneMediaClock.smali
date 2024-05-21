.class public final Lcom/google/android/exoplayer2/util/StandaloneMediaClock;
.super Ljava/lang/Object;
.source "StandaloneMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# instance fields
.field private baseElapsedMs:J

.field private baseUs:J

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

.field private started:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 40
    sget-object p1, Lcom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplayer2/PlaybackParameters;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-object p0
.end method

.method public getPositionUs()J
    .locals 6

    iget-wide v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 75
    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 76
    iget v4, v4, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    .line 77
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->msToUs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    .line 81
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/PlaybackParameters;->getMediaTimeUsForPlayoutTimeMs(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method public resetPosition(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseUs:J

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 67
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    :cond_0
    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->playbackParameters:Lcom/google/android/exoplayer2/PlaybackParameters;

    return-void
.end method

.method public start()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 46
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->baseElapsedMs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->started:Z

    :cond_0
    return-void
.end method
