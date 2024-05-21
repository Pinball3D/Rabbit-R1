.class public interface abstract Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
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

.method public onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 0

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/common/Format;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    return-void
.end method

.method public onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 0

    return-void
.end method
