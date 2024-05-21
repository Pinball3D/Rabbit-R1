.class public Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field private final audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

.field private final silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

.field private final sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/common/audio/AudioProcessor;)V
    .locals 2

    .line 139
    new-instance v0, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;-><init>()V

    new-instance v1, Landroidx/media3/common/audio/SonicAudioProcessor;

    invoke-direct {v1}, Landroidx/media3/common/audio/SonicAudioProcessor;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;Landroidx/media3/common/audio/SonicAudioProcessor;)V

    return-void
.end method

.method public constructor <init>([Landroidx/media3/common/audio/AudioProcessor;Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;Landroidx/media3/common/audio/SonicAudioProcessor;)V
    .locals 3

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroidx/media3/common/audio/AudioProcessor;

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    const/4 v1, 0x0

    .line 153
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    iput-object p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 161
    array-length p0, p1

    aput-object p2, v0, p0

    .line 162
    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    aput-object p3, v0, p0

    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)Landroidx/media3/common/PlaybackParameters;
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 172
    iget v1, p1, Landroidx/media3/common/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Landroidx/media3/common/audio/SonicAudioProcessor;->setSpeed(F)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 173
    iget v0, p1, Landroidx/media3/common/PlaybackParameters;->pitch:F

    invoke-virtual {p0, v0}, Landroidx/media3/common/audio/SonicAudioProcessor;->setPitch(F)V

    return-object p1
.end method

.method public applySkipSilenceEnabled(Z)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 179
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    return p1
.end method

.method public getAudioProcessors()[Landroidx/media3/common/audio/AudioProcessor;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Landroidx/media3/common/audio/AudioProcessor;

    return-object p0
.end method

.method public getMediaDuration(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Landroidx/media3/common/audio/SonicAudioProcessor;

    .line 185
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/audio/SonicAudioProcessor;->getMediaDuration(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;

    .line 190
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method
