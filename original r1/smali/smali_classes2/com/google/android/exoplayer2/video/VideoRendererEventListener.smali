.class public interface abstract Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onDroppedFrames(IJ)V
    .locals 0

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0

    return-void
.end method
