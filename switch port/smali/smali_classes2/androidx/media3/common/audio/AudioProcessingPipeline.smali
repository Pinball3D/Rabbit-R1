.class public final Landroidx/media3/common/audio/AudioProcessingPipeline;
.super Ljava/lang/Object;
.source "AudioProcessingPipeline.java"


# instance fields
.field private final activeAudioProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private final audioProcessors:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private inputEnded:Z

.field private outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

.field private outputBuffers:[Ljava/nio/ByteBuffer;

.field private pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/audio/AudioProcessor;",
            ">;)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 101
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 102
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-boolean p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    return-void
.end method

.method private getFinalOutputBufferIndex()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 335
    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private processData(Ljava/nio/ByteBuffer;)V
    .locals 8

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 306
    :goto_1
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v3

    if-gt v1, v3, :cond_7

    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 307
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 312
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/audio/AudioProcessor;

    .line 314
    invoke-interface {v3}, Landroidx/media3/common/audio/AudioProcessor;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 315
    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    .line 316
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v3}, Landroidx/media3/common/audio/AudioProcessor;->queueEndOfStream()V

    goto :goto_5

    :cond_1
    if-lez v1, :cond_2

    iget-object v4, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v1, -0x1

    .line 323
    aget-object v4, v4, v5

    goto :goto_2

    .line 324
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, p1

    goto :goto_2

    :cond_3
    sget-object v4, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    .line 325
    :goto_2
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v5, v5

    .line 326
    invoke-interface {v3, v4}, Landroidx/media3/common/audio/AudioProcessor;->queueInput(Ljava/nio/ByteBuffer;)V

    iget-object v7, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 327
    invoke-interface {v3}, Landroidx/media3/common/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v7, v1

    .line 329
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-gtz v3, :cond_5

    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    move v3, v0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v3, 0x1

    :goto_4
    or-int/2addr v2, v3

    :cond_6
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    goto/16 :goto_0

    :cond_8
    return-void
.end method


# virtual methods
.method public configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 124
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {p1, v0}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 130
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 131
    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/audio/AudioProcessor;

    .line 132
    invoke-interface {v1, p1}, Landroidx/media3/common/audio/AudioProcessor;->configure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    move-result-object v2

    .line 133
    invoke-interface {v1}, Landroidx/media3/common/audio/AudioProcessor;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    sget-object p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    invoke-virtual {v2, p1}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    move-object p1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p1

    .line 125
    :cond_2
    new-instance p0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 281
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/audio/AudioProcessingPipeline;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 284
    :cond_1
    check-cast p1, Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 285
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    iget-object v3, p1, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 288
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 289
    invoke-virtual {v3, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p1, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 151
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 155
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 156
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    .line 157
    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->flush()V

    .line 158
    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->isActive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 159
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 163
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 164
    :goto_1
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 165
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->getOutput()Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getOutput()Ljava/nio/ByteBuffer;
    .locals 2

    .line 212
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    sget-object p0, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 215
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 216
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-object v0
.end method

.method public getOutputAudioFormat()Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 299
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEnded()Z
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 250
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {v0}, Landroidx/media3/common/audio/AudioProcessor;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 251
    invoke-direct {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->getFinalOutputBufferIndex()I

    move-result p0

    aget-object p0, v0, p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOperational()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    .line 183
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public queueEndOfStream()V
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    iget-object p0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->activeAudioProcessors:Ljava/util/List;

    const/4 v0, 0x0

    .line 234
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/audio/AudioProcessor;

    invoke-interface {p0}, Landroidx/media3/common/audio/AudioProcessor;->queueEndOfStream()V

    :cond_1
    :goto_0
    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroidx/media3/common/audio/AudioProcessingPipeline;->isOperational()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-direct {p0, p1}, Landroidx/media3/common/audio/AudioProcessingPipeline;->processData(Ljava/nio/ByteBuffer;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 259
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->audioProcessors:Lcom/google/common/collect/ImmutableList;

    .line 260
    invoke-virtual {v2, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/audio/AudioProcessor;

    .line 261
    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->flush()V

    .line 262
    invoke-interface {v2}, Landroidx/media3/common/audio/AudioProcessor;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    iput-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputBuffers:[Ljava/nio/ByteBuffer;

    .line 265
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->outputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    .line 266
    sget-object v1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-object v1, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->pendingOutputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iput-boolean v0, p0, Landroidx/media3/common/audio/AudioProcessingPipeline;->inputEnded:Z

    return-void
.end method
