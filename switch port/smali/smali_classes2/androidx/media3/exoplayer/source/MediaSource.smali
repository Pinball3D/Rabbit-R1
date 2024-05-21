.class public interface abstract Landroidx/media3/exoplayer/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;,
        Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;,
        Landroidx/media3/exoplayer/source/MediaSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addDrmEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
.end method

.method public abstract addEventListener(Landroid/os/Handler;Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;
.end method

.method public abstract disable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract enable(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public getInitialTimeline()Landroidx/media3/common/Timeline;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMediaItem()Landroidx/media3/common/MediaItem;
.end method

.method public isSingleWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    sget-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {p0, p1, p2, v0}, Landroidx/media3/exoplayer/source/MediaSource;->prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public abstract prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V
.end method

.method public abstract releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract removeDrmEventListener(Landroidx/media3/exoplayer/drm/DrmSessionEventListener;)V
.end method

.method public abstract removeEventListener(Landroidx/media3/exoplayer/source/MediaSourceEventListener;)V
.end method
