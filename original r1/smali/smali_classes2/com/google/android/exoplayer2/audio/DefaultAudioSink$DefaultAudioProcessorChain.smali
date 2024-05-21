.class public Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplayer2/audio/DefaultAudioSink$AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field private final audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

.field private final silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;

.field private final sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 2

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/audio/AudioProcessor;Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 140
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;

    iput-object p3, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 148
    array-length p0, p1

    aput-object p2, v0, p0

    .line 149
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    aput-object p3, v0, p0

    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Lcom/google/android/exoplayer2/PlaybackParameters;)Lcom/google/android/exoplayer2/PlaybackParameters;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 159
    iget v1, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setSpeed(F)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 160
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackParameters;->pitch:F

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->setPitch(F)V

    return-object p1
.end method

.method public applySkipSilenceEnabled(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;

    .line 166
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    return p1
.end method

.method public getAudioProcessors()[Lcom/google/android/exoplayer2/audio/AudioProcessor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lcom/google/android/exoplayer2/audio/AudioProcessor;

    return-object p0
.end method

.method public getMediaDuration(J)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;

    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/SonicAudioProcessor;->getMediaDuration(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;

    .line 177
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method
