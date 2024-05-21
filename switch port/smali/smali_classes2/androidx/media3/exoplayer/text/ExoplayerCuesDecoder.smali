.class public final Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;
.super Ljava/lang/Object;
.source "ExoplayerCuesDecoder.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;
    }
.end annotation


# static fields
.field private static final INPUT_BUFFER_AVAILABLE:I = 0x0

.field private static final INPUT_BUFFER_DEQUEUED:I = 0x1

.field private static final INPUT_BUFFER_QUEUED:I = 0x2

.field private static final OUTPUT_BUFFERS_COUNT:I = 0x2


# instance fields
.field private final availableOutputBuffers:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroidx/media3/extractor/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final cueDecoder:Landroidx/media3/extractor/text/CueDecoder;

.field private final inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

.field private inputBufferState:I

.field private released:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroidx/media3/extractor/text/CueDecoder;

    invoke-direct {v0}, Landroidx/media3/extractor/text/CueDecoder;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->cueDecoder:Landroidx/media3/extractor/text/CueDecoder;

    .line 71
    new-instance v0, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-direct {v0}, Landroidx/media3/extractor/text/SubtitleInputBuffer;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    .line 74
    new-instance v3, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;

    invoke-direct {v3, p0}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;-><init>(Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;)V

    invoke-interface {v2, v3}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->releaseOutputBuffer(Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V

    return-void
.end method

.method private releaseOutputBuffer(Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    .line 148
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    .line 149
    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 150
    invoke-virtual {p1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->clear()V

    iget-object p0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    .line 151
    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 93
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    iget-object p0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    return-object p0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    xor-int/lit8 v0, v0, 0x1

    .line 112
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    .line 113
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->availableOutputBuffers:Ljava/util/Deque;

    .line 116
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    iget-object v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 117
    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->isEndOfStream()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 118
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->addFlag(I)V

    goto :goto_0

    .line 120
    :cond_1
    new-instance v4, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;

    iget-object v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    iget-wide v1, v1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->timeUs:J

    iget-object v3, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->cueDecoder:Landroidx/media3/extractor/text/CueDecoder;

    iget-object v5, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    iget-object v5, v5, Landroidx/media3/extractor/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 122
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/media3/extractor/text/CueDecoder;->decode([B)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v4, v1, v2, v3}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$SingleEventSubtitle;-><init>(JLcom/google/common/collect/ImmutableList;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 123
    iget-wide v2, v1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->timeUs:J

    const-wide/16 v5, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 125
    invoke-virtual {v1}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 48
    invoke-virtual {p0}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    xor-int/lit8 v0, v0, 0x1

    .line 132
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    .line 133
    invoke-virtual {v0}, Landroidx/media3/extractor/text/SubtitleInputBuffer;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "ExoplayerCuesDecoder"

    return-object p0
.end method

.method public queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 103
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 104
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBuffer:Landroidx/media3/extractor/text/SubtitleInputBuffer;

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 105
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->inputBufferState:I

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 48
    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->released:Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    return-void
.end method
