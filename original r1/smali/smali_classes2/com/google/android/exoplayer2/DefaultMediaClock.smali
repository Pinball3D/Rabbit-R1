.class final Lcom/google/android/exoplayer2/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;
    }
.end annotation


# instance fields
.field private isUsingStandaloneClock:Z

.field private final listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;

.field private rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

.field private rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

.field private final standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

.field private standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;

    .line 59
    new-instance p1, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method

.method private shouldUseStandaloneClock(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 193
    invoke-interface {v0}, Lcom/google/android/exoplayer2/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    .line 194
    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer;->hasReadStreamToEnd()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private syncClocks(Z)V
    .locals 4

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->shouldUseStandaloneClock(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 164
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/util/MediaClock;

    .line 165
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 168
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 169
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 174
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 178
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    .line 179
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 180
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 181
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->listener:Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;

    .line 182
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock$PlaybackParametersListener;->onPlaybackParametersChanged(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 134
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 135
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/MediaClock;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public onRendererDisabled(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_0
    return-void
.end method

.method public onRendererEnabled(Lcom/google/android/exoplayer2/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/google/android/exoplayer2/Renderer;->getMediaClock()Lcom/google/android/exoplayer2/util/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplayer2/Renderer;

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple renderer media clocks enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public resetPosition(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 81
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplayer2/util/MediaClock;

    .line 142
    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplayer2/PlaybackParameters;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 144
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 66
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplayer2/util/StandaloneMediaClock;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs(Z)J
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/DefaultMediaClock;->syncClocks(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/DefaultMediaClock;->getPositionUs()J

    move-result-wide p0

    return-wide p0
.end method
