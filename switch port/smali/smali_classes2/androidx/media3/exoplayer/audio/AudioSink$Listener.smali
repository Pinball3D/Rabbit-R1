.class public interface abstract Landroidx/media3/exoplayer/audio/AudioSink$Listener;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/AudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onAudioCapabilitiesChanged()V
    .locals 0

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public onOffloadBufferEmptying()V
    .locals 0

    return-void
.end method

.method public onOffloadBufferFull()V
    .locals 0

    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 0

    return-void
.end method

.method public abstract onPositionDiscontinuity()V
.end method

.method public abstract onSkipSilenceEnabledChanged(Z)V
.end method

.method public abstract onUnderrun(IJJ)V
.end method
