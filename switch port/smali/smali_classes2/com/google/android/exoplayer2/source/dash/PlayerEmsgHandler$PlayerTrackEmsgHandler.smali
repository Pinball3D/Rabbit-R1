.class public final Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;
.super Ljava/lang/Object;
.source "PlayerEmsgHandler.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PlayerTrackEmsgHandler"
.end annotation


# instance fields
.field private final buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

.field private final formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

.field private maxLoadedChunkEndTimeUs:J

.field private final sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field final synthetic this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithoutDrm(Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 269
    new-instance p1, Lcom/google/android/exoplayer2/FormatHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/FormatHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    .line 270
    new-instance p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    return-void
.end method

.method private dequeueSample()Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 362
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->formatHolder:Lcom/google/android/exoplayer2/FormatHolder;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    const/4 v3, 0x0

    .line 364
    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    .line 366
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->flip()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->buffer:Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private onManifestExpiredMessageEncountered(JJ)V
    .locals 1

    .line 382
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$ManifestExpiryEventInfo;-><init>(JJ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 384
    invoke-static {p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->access$300(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->access$300(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private parseAndDiscardSamples()V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->dequeueSample()Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    iget-wide v2, v0, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->timeUs:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 348
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->access$000(Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;->decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    .line 353
    iget-object v1, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->parsePlayerEmsgEvent(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 357
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToRead()V

    return-void
.end method

.method private parsePlayerEmsgEvent(JLcom/google/android/exoplayer2/metadata/emsg/EventMessage;)V
    .locals 4

    .line 373
    invoke-static {p3}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->access$200(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->onManifestExpiredMessageEncountered(JJ)V

    return-void
.end method


# virtual methods
.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 276
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public maybeRefreshManifestBeforeLoadingNextChunk(J)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 306
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->maybeRefreshManifestBeforeLoadingNextChunk(J)Z

    move-result p0

    return p0
.end method

.method public onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 316
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 317
    :cond_0
    iget-wide v0, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 319
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    return-void
.end method

.method public onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->maxLoadedChunkEndTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 329
    iget-wide v2, p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->this$0:Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;

    .line 331
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler;->onChunkLoadError(Z)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 336
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 283
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 288
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->sampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 294
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    .line 295
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/dash/PlayerEmsgHandler$PlayerTrackEmsgHandler;->parseAndDiscardSamples()V

    return-void
.end method
