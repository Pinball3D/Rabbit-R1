.class public final Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/video/VideoRendererEventListener;)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 171
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    return-void
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    new-instance v8, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public decoderReleased(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 246
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public disabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public droppedFrames(IJ)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 213
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public enabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public inputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 202
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method synthetic lambda$decoderInitialized$1$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .locals 6

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 188
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 189
    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method synthetic lambda$decoderReleased$7$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/String;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 246
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$disabled$8$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroidx/media3/exoplayer/DecoderCounters;->ensureUpdated()V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 257
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method synthetic lambda$droppedFrames$3$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(IJ)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 213
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    return-void
.end method

.method synthetic lambda$enabled$0$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 178
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method

.method synthetic lambda$inputFormatChanged$2$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 204
    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoInputFormatChanged(Landroidx/media3/common/Format;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 205
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method

.method synthetic lambda$renderedFirstFrame$6$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/Object;J)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 239
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method

.method synthetic lambda$reportVideoFrameProcessingOffset$4$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(JI)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 222
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 223
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method synthetic lambda$videoCodecError$9$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/Exception;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 265
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$videoSizeChanged$5$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Landroidx/media3/common/VideoSize;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->listener:Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    .line 230
    invoke-static {p0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener;

    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener;->onVideoSizeChanged(Landroidx/media3/common/VideoSize;)V

    return-void
.end method

.method public renderedFirstFrame(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 239
    new-instance v3, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v0, v1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public reportVideoFrameProcessingOffset(JI)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoCodecError(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 265
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoSizeChanged(Landroidx/media3/common/VideoSize;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 230
    new-instance v1, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;-><init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/VideoSize;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
