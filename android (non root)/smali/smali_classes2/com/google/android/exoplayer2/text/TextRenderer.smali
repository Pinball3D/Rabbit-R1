.class public final Lcom/google/android/exoplayer2/text/TextRenderer;
.super Lcom/google/android/exoplayer2/BaseRenderer;
.source "TextRenderer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_UPDATE_OUTPUT:I = 0x0

.field private static final REPLACEMENT_STATE_NONE:I = 0x0

.field private static final REPLACEMENT_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REPLACEMENT_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TextRenderer"


# instance fields
.field private decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

.field private final decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

.field private decoderReplacementState:I

.field private finalStreamEndPositionUs:J

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private inputStreamEnded:Z

.field private lastRendererPositionUs:J

.field private nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

.field private nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private nextSubtitleEventIndex:I

.field private final output:Lcom/google/android/exoplayer2/text/TextOutput;

.field private final outputHandler:Landroid/os/Handler;

.field private outputStreamEnded:Z

.field private outputStreamOffsetUs:J

.field private streamFormat:Lcom/google/android/exoplayer2/Format;

.field private subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

.field private waitingForKeyFrame:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V
    .locals 1

    .line 110
    sget-object v0, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;-><init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/TextOutput;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;)V
    .locals 1

    const/4 v0, 0x3

    .line 124
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 125
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/TextOutput;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 129
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    return-void
.end method

.method private clearOutput()V
    .locals 4

    .line 385
    new-instance v0, Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplayer2/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/text/CueGroup;-><init>(Ljava/util/List;J)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/TextRenderer;->updateOutput(Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method private getCurrentEventTimeUs(J)J
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "subtitle"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 420
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 421
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 426
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    add-int/lit8 p1, p1, -0x1

    .line 427
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 422
    iget-wide p0, p0, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    return-wide p0
.end method

.method private getNextEventTime()J
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    const/4 v1, -0x1

    const-wide v2, 0x7fffffffffffffffL

    if-ne v0, v1, :cond_0

    return-wide v2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 370
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 371
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTimeCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iget p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 373
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getEventTime(I)J

    move-result-wide v2

    :goto_0
    return-wide v2
.end method

.method private getPresentationTimeUs(J)J
    .locals 7
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 432
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v5, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    cmp-long v0, v5, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 433
    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method private handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 413
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    .line 414
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    return-void
.end method

.method private initDecoder()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    .line 358
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->createDecoder(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    return-void
.end method

.method private invokeUpdateOutputInternal(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    .line 401
    iget-object v1, p1, Lcom/google/android/exoplayer2/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Ljava/util/List;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->output:Lcom/google/android/exoplayer2/text/TextOutput;

    .line 402
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/text/TextOutput;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method private releaseBuffers()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    :cond_1
    return-void
.end method

.method private releaseDecoder()V
    .locals 1

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 351
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    return-void
.end method

.method private replaceDecoder()V
    .locals 0

    .line 362
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseDecoder()V

    .line 363
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->initDecoder()V

    return-void
.end method

.method private updateOutput(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 378
    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Lcom/google/android/exoplayer2/text/CueGroup;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "TextRenderer"

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 392
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/text/CueGroup;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->invokeUpdateOutputInternal(Lcom/google/android/exoplayer2/text/CueGroup;)V

    const/4 p0, 0x1

    return p0

    .line 395
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public isEnded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    return p0
.end method

.method public isReady()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onDisabled()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    .line 318
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseDecoder()V

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 181
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->clearOutput()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_0

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 189
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->flush()V

    :goto_0
    return-void
.end method

.method protected onStreamChanged([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0

    iput-wide p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamOffsetUs:J

    const/4 p2, 0x0

    .line 170
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->streamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    goto :goto_0

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->initDecoder()V

    :goto_0
    return-void
.end method

.method public render(JJ)V
    .locals 8

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->lastRendererPositionUs:J

    .line 196
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->isCurrentStreamFinal()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    :cond_0
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 208
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->setPositionUs(J)V

    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 210
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void

    .line 217
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getState()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 225
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    move p3, v1

    :goto_1
    cmp-long v2, v2, p1

    if-gtz v2, :cond_5

    iget p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    .line 228
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v2

    move p3, p4

    goto :goto_1

    :cond_4
    move p3, v1

    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 234
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->isEndOfStream()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    .line 235
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->getNextEventTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    iget v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne v2, v0, :cond_6

    .line 237
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->replaceDecoder()V

    goto :goto_2

    .line 239
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->releaseBuffers()V

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->outputStreamEnded:Z

    goto :goto_2

    .line 243
    :cond_7
    iget-wide v4, v2, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->timeUs:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_9

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    if-eqz p3, :cond_8

    .line 246
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->release()V

    .line 248
    :cond_8
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getNextEventTimeIndex(J)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitleEventIndex:I

    iput-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextSubtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    goto :goto_3

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    :goto_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    .line 257
    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/text/TextRenderer;->getCurrentEventTimeUs(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/exoplayer2/text/TextRenderer;->getPresentationTimeUs(J)J

    move-result-wide v4

    .line 260
    new-instance p3, Lcom/google/android/exoplayer2/text/CueGroup;

    iget-object v2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->subtitle:Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;->getCues(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p3, p1, v4, v5}, Lcom/google/android/exoplayer2/text/CueGroup;-><init>(Ljava/util/List;J)V

    .line 261
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/text/TextRenderer;->updateOutput(Lcom/google/android/exoplayer2/text/CueGroup;)V

    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne p1, v0, :cond_b

    return-void

    :cond_b
    :goto_4
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 272
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    if-nez p1, :cond_c

    return-void

    :cond_c
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    :cond_d
    iget p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    if-ne p2, p4, :cond_e

    const/4 p2, 0x4

    .line 279
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->setFlags(I)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 280
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;

    iput v0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderReplacementState:I

    return-void

    :cond_e
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 286
    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/text/TextRenderer;->readSource(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_11

    .line 288
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result p2

    if-eqz p2, :cond_f

    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->inputStreamEnded:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    goto :goto_5

    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 292
    iget-object p2, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    if-nez p2, :cond_10

    return-void

    .line 297
    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->subsampleOffsetUs:J

    .line 298
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->flip()V

    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    .line 299
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;->isKeyFrame()Z

    move-result p3

    xor-int/2addr p3, p4

    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    :goto_5
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->waitingForKeyFrame:Z

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoder:Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    .line 302
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/SubtitleDecoder;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoder;->queueInputBuffer(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->nextInputBuffer:Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :cond_11
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    return-void

    :catch_1
    move-exception p1

    .line 310
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/TextRenderer;->handleDecoderError(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    :cond_12
    return-void
.end method

.method public setFinalStreamEndPositionUs(J)V
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/TextRenderer;->isCurrentStreamFinal()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->finalStreamEndPositionUs:J

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/TextRenderer;->decoderFactory:Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;

    .line 142
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderFactory;->supportsFormat(Lcom/google/android/exoplayer2/Format;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 144
    iget p0, p1, Lcom/google/android/exoplayer2/Format;->cryptoType:I

    if-nez p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 143
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    .line 145
    :cond_1
    iget-object p0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    .line 146
    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->create(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    .line 148
    invoke-static {p0}, Lcom/google/android/exoplayer2/RendererCapabilities;->create(I)I

    move-result p0

    return p0
.end method
