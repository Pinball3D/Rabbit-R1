.class final Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 915
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 953
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 954
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onOffloadBufferEmptying()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 939
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 940
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer$WakeupListener;->onWakeup()V

    :cond_0
    return-void
.end method

.method public onOffloadBufferFull()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 946
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 947
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/Renderer$WakeupListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/Renderer$WakeupListener;->onSleep()V

    :cond_0
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 924
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 919
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->onPositionDiscontinuity()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 934
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 6

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;

    .line 929
    invoke-static {p0}, Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplayer2/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    return-void
.end method
