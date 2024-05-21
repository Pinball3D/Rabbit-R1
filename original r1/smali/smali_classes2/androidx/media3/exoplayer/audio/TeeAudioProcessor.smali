.class public final Landroidx/media3/exoplayer/audio/TeeAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "TeeAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;,
        Landroidx/media3/exoplayer/audio/TeeAudioProcessor$WavFileAudioBufferSink;
    }
.end annotation


# instance fields
.field private final audioBufferSink:Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    .line 70
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->audioBufferSink:Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;

    return-void
.end method

.method private flushSinkIfActive()V
    .locals 3

    .line 105
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->audioBufferSink:Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;

    .line 106
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v2, p0, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-interface {v0, v1, v2, p0}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;->flush(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0

    return-object p1
.end method

.method protected onFlush()V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 0

    .line 96
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 81
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->audioBufferSink:Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor$AudioBufferSink;->handleBuffer(Ljava/nio/ByteBuffer;)V

    .line 86
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/audio/TeeAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
