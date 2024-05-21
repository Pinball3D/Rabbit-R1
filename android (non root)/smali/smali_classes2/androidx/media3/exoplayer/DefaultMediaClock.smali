.class final Landroidx/media3/exoplayer/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Landroidx/media3/exoplayer/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;
    }
.end annotation


# instance fields
.field private isUsingStandaloneClock:Z

.field private final listener:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

.field private rendererClock:Landroidx/media3/exoplayer/MediaClock;

.field private rendererClockSource:Landroidx/media3/exoplayer/Renderer;

.field private final standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

.field private standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;Landroidx/media3/common/util/Clock;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->listener:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    .line 58
    new-instance p1, Landroidx/media3/exoplayer/StandaloneMediaClock;

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;-><init>(Landroidx/media3/common/util/Clock;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method

.method private shouldUseStandaloneClock(Z)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    if-eqz v0, :cond_1

    .line 191
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    .line 192
    invoke-interface {v0}, Landroidx/media3/exoplayer/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    .line 193
    invoke-interface {p0}, Landroidx/media3/exoplayer/Renderer;->hasReadStreamToEnd()Z

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

    .line 154
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->shouldUseStandaloneClock(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 157
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    .line 163
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/MediaClock;

    .line 164
    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    iget-boolean v2, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 167
    invoke-virtual {v2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 168
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->stop()V

    return-void

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    iget-boolean v2, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 173
    invoke-virtual {v2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    :cond_3
    iget-object v2, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 177
    invoke-virtual {v2, v0, v1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    .line 178
    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 179
    invoke-virtual {v0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/common/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 180
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->listener:Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;

    .line 181
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock$PlaybackParametersListener;->onPlaybackParametersChanged(Landroidx/media3/common/PlaybackParameters;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 150
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getPositionUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 133
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    .line 134
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/MediaClock;

    invoke-interface {p0}, Landroidx/media3/exoplayer/MediaClock;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public onRendererDisabled(Landroidx/media3/exoplayer/Renderer;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_0
    return-void
.end method

.method public onRendererEnabled(Landroidx/media3/exoplayer/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    .line 92
    invoke-interface {p1}, Landroidx/media3/exoplayer/Renderer;->getMediaClock()Landroidx/media3/exoplayer/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    iput-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClockSource:Landroidx/media3/exoplayer/Renderer;

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 100
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/MediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    goto :goto_0

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Multiple renderer media clocks enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public resetPosition(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 80
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/MediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->rendererClock:Landroidx/media3/exoplayer/MediaClock;

    .line 141
    invoke-interface {p1}, Landroidx/media3/exoplayer/MediaClock;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p1

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 143
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/StandaloneMediaClock;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 65
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClockIsStarted:Z

    iget-object p0, p0, Landroidx/media3/exoplayer/DefaultMediaClock;->standaloneClock:Landroidx/media3/exoplayer/StandaloneMediaClock;

    .line 71
    invoke-virtual {p0}, Landroidx/media3/exoplayer/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs(Z)J
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/DefaultMediaClock;->syncClocks(Z)V

    .line 125
    invoke-virtual {p0}, Landroidx/media3/exoplayer/DefaultMediaClock;->getPositionUs()J

    move-result-wide p0

    return-wide p0
.end method
