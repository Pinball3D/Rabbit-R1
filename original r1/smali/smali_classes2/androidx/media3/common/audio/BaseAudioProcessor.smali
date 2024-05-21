.class public abstract Landroidx/media3/common/audio/BaseAudioProcessor;
.super Ljava/lang/Object;
.source "BaseAudioProcessor.java"

# interfaces
.implements Landroidx/media3/common/audio/AudioProcessor;


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field protected inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private inputEnded:Z

.field protected outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private outputBuffer:Ljava/nio/ByteBuffer;

.field private pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Landroidx/media3/common/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 45
    sget-object v0, Landroidx/media3/common/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 46
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 47
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 48
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 49
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-void
.end method


# virtual methods
.method public final configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 57
    invoke-virtual {p0, p1}, Landroidx/media3/common/audio/BaseAudioProcessor;->onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 58
    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    :goto_0
    return-object p0
.end method

.method public final flush()V
    .locals 1

    .line 89
    sget-object v0, Landroidx/media3/common/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 93
    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->onFlush()V

    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 76
    sget-object v1, Landroidx/media3/common/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected final hasPendingOutput()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 124
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    return p0
.end method

.method public isActive()Z
    .locals 1

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 63
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnded()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    .line 84
    sget-object v0, Landroidx/media3/common/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 131
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p0
.end method

.method protected onFlush()V
    .locals 0

    return-void
.end method

.method protected onQueueEndOfStream()V
    .locals 0

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method public final queueEndOfStream()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputEnded:Z

    .line 69
    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->onQueueEndOfStream()V

    return-void
.end method

.method protected final replaceOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 114
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final reset()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->flush()V

    .line 99
    sget-object v0, Landroidx/media3/common/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->buffer:Ljava/nio/ByteBuffer;

    .line 100
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingInputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 101
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 102
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 103
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/BaseAudioProcessor;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 104
    invoke-virtual {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;->onReset()V

    return-void
.end method
