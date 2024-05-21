.class public interface abstract Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDownstreamFormatChanged(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/source/MediaLoadData;)V
    .locals 0

    return-void
.end method
