.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioProcessorChain;
.super Ljava/lang/Object;
.source "AudioProcessorChain.java"


# virtual methods
.method public abstract applyPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
.end method

.method public abstract applySkipSilenceEnabled(Z)Z
.end method

.method public abstract getAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
.end method

.method public abstract getMediaDuration(J)J
.end method

.method public abstract getSkippedOutputFrameCount()J
.end method
