.class public interface abstract Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;
.super Ljava/lang/Object;
.source "AnalyticsCollector.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;
.implements Lcom/google/android/exoplayer2/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
.end method

.method public abstract notifySeekStarted()V
.end method

.method public abstract onAudioCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onAudioDecoderReleased(Ljava/lang/String;)V
.end method

.method public abstract onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onAudioPositionAdvancing(J)V
.end method

.method public abstract onAudioSinkError(Ljava/lang/Exception;)V
.end method

.method public abstract onAudioUnderrun(IJJ)V
.end method

.method public abstract onDroppedFrames(IJ)V
.end method

.method public abstract onRenderedFirstFrame(Ljava/lang/Object;J)V
.end method

.method public abstract onVideoCodecError(Ljava/lang/Exception;)V
.end method

.method public abstract onVideoDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDecoderReleased(Ljava/lang/String;)V
.end method

.method public abstract onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoFrameProcessingOffset(JI)V
.end method

.method public abstract onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract release()V
.end method

.method public abstract removeListener(Lcom/google/android/exoplayer2/analytics/AnalyticsListener;)V
.end method

.method public abstract setPlayer(Lcom/google/android/exoplayer2/Player;Landroid/os/Looper;)V
.end method

.method public abstract updateMediaPeriodQueueInfo(Ljava/util/List;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ">;",
            "Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            ")V"
        }
    .end annotation
.end method
