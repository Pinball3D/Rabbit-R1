.class public interface abstract Landroidx/media3/exoplayer/audio/AudioRendererEventListener;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAudioDisabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioEnabled(Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/common/Format;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onAudioInputFormatChanged(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 0

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 0

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 0

    return-void
.end method
