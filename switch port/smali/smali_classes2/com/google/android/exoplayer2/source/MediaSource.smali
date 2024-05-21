.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;,
        Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;,
        Lcom/google/android/exoplayer2/source/MediaSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
.end method

.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/upstream/Allocator;J)Lcom/google/android/exoplayer2/source/MediaPeriod;
.end method

.method public abstract disable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract enable(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMediaItem()Lcom/google/android/exoplayer2/MediaItem;
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

.method public prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    sget-object v0, Lcom/google/android/exoplayer2/analytics/PlayerId;->UNSET:Lcom/google/android/exoplayer2/analytics/PlayerId;

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/source/MediaSource;->prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V

    return-void
.end method

.method public abstract prepareSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplayer2/upstream/TransferListener;Lcom/google/android/exoplayer2/analytics/PlayerId;)V
.end method

.method public abstract releasePeriod(Lcom/google/android/exoplayer2/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Lcom/google/android/exoplayer2/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract removeDrmEventListener(Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;)V
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplayer2/source/MediaSourceEventListener;)V
.end method
