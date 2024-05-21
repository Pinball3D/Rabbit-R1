.class public final Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;
.super Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;
.source "TeeAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$WavFileAudioBufferSink;,
        Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;
    }
.end annotation


# instance fields
.field private final audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/BaseAudioProcessor;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    return-void
.end method

.method private flushSinkIfActive()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    .line 101
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget v2, v2, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;

    iget p0, p0, Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-interface {v0, v1, v2, p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;->flush(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplayer2/audio/AudioProcessor$AudioFormat;
    .locals 0

    return-object p1
.end method

.method protected onFlush()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method protected onReset()V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->audioBufferSink:Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;

    .line 80
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor$AudioBufferSink;->handleBuffer(Ljava/nio/ByteBuffer;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/audio/TeeAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
