.class abstract Landroidx/media3/extractor/text/cea/CeaDecoder;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Landroidx/media3/extractor/text/SubtitleDecoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;,
        Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;
    }
.end annotation


# static fields
.field private static final NUM_INPUT_BUFFERS:I = 0xa

.field private static final NUM_OUTPUT_BUFFERS:I = 0x2


# instance fields
.field private final availableInputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final availableOutputBuffers:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroidx/media3/extractor/text/SubtitleOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

.field private playbackPositionUs:J

.field private queuedInputBufferCount:J

.field private final queuedInputBuffers:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 49
    new-instance v3, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;-><init>(Landroidx/media3/extractor/text/cea/CeaDecoder$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 53
    new-instance v2, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    new-instance v3, Landroidx/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroidx/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/extractor/text/cea/CeaDecoder;)V

    invoke-direct {v2, v3}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;-><init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    return-void
.end method

.method private releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V
    .locals 0

    .line 128
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->clear()V

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 129
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected abstract createSubtitle()Landroidx/media3/extractor/text/Subtitle;
.end method

.method protected abstract decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
.end method

.method public dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 69
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableInputBuffers:Ljava/util/ArrayDeque;

    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    return-object v0
.end method

.method public bridge synthetic dequeueInputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 99
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 100
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    iget-wide v2, v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    iget-wide v4, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 101
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 103
    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    const/4 v2, 0x4

    .line 106
    invoke-virtual {v1, v2}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->addFlag(I)V

    .line 107
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    .line 113
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->isNewSubtitleDataAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->createSubtitle()Landroidx/media3/extractor/text/Subtitle;

    move-result-object v6

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 116
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    .line 117
    iget-wide v4, v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->setContent(JLandroidx/media3/extractor/text/Subtitle;J)V

    .line 118
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    return-object v1

    .line 122
    :cond_2
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public bridge synthetic dequeueOutputBuffer()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    iput-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 141
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 142
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    :cond_1
    return-void
.end method

.method protected final getAvailableOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 169
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    return-object p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected final getPositionUs()J
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-wide v0
.end method

.method protected abstract isNewSubtitleDataAvailable()Z
.end method

.method public queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 80
    check-cast p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    .line 81
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseInputBuffer(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;)V

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBufferCount:J

    .line 85
    invoke-static {p1, v0, v1}, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;->access$102(Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;J)J

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->queuedInputBuffers:Ljava/util/PriorityQueue;

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeuedInputBuffer:Landroidx/media3/extractor/text/cea/CeaDecoder$CeaInputBuffer;

    return-void
.end method

.method public bridge synthetic queueInputBuffer(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/decoder/DecoderException;
        }
    .end annotation

    .line 32
    check-cast p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method protected releaseOutputBuffer(Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V
    .locals 0

    .line 133
    invoke-virtual {p1}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;->clear()V

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->availableOutputBuffers:Ljava/util/ArrayDeque;

    .line 134
    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPositionUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder;->playbackPositionUs:J

    return-void
.end method
