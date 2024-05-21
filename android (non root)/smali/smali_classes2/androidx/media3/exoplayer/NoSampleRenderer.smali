.class public abstract Landroidx/media3/exoplayer/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Landroidx/media3/exoplayer/Renderer;
.implements Landroidx/media3/exoplayer/RendererCapabilities;


# instance fields
.field private configuration:Landroidx/media3/exoplayer/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Landroidx/media3/exoplayer/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 146
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 150
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Landroidx/media3/exoplayer/RendererConfiguration;[Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    iget v0, v7, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    move-object v0, p1

    iput-object v0, v7, Landroidx/media3/exoplayer/NoSampleRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    iput v1, v7, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 81
    invoke-virtual {p0, p6}, Landroidx/media3/exoplayer/NoSampleRenderer;->onEnabled(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 82
    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/NoSampleRenderer;->replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V

    move-wide v0, p4

    .line 83
    invoke-virtual {p0, p4, p5, p6}, Landroidx/media3/exoplayer/NoSampleRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Landroidx/media3/exoplayer/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method protected final getConfiguration()Landroidx/media3/exoplayer/RendererConfiguration;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->configuration:Landroidx/media3/exoplayer/RendererConfiguration;

    return-object p0
.end method

.method protected final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->index:I

    return p0
.end method

.method public getMediaClock()Landroidx/media3/exoplayer/MediaClock;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getReadingPositionUs()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    return p0
.end method

.method public final getStream()Landroidx/media3/exoplayer/source/SampleStream;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    return-object p0
.end method

.method public final getTrackType()I
    .locals 0

    const/4 p0, -0x2

    return p0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final init(ILandroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->index:I

    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    return p0
.end method

.method public isEnded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onDisabled()V
    .locals 0

    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method public final replaceStream([Landroidx/media3/common/Format;Landroidx/media3/exoplayer/source/SampleStream;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget-boolean p1, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 p1, p1, 0x1

    .line 97
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p2, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->stream:Landroidx/media3/exoplayer/source/SampleStream;

    .line 99
    invoke-virtual {p0, p5, p6}, Landroidx/media3/exoplayer/NoSampleRenderer;->onRendererOffsetChanged(J)V

    return-void
.end method

.method public final reset()V
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 156
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    .line 134
    invoke-virtual {p0, p1, p2, v0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->streamIsFinal:Z

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 88
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    iput v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 90
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput v2, p0, Landroidx/media3/exoplayer/NoSampleRenderer;->state:I

    .line 141
    invoke-virtual {p0}, Landroidx/media3/exoplayer/NoSampleRenderer;->onStopped()V

    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 173
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->create(I)I

    move-result p0

    return p0
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/ExoPlaybackException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
