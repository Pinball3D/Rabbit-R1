.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;


# instance fields
.field private sampleQueueIndex:I

.field private final sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

.field private final trackGroupIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method private hasValidSampleQueueIndex()Z
    .locals 1

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, -0x3

    if-eq p0, v0, :cond_0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bindSampleQueue()V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->bindSampleQueueToSampleStream(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    return-void
.end method

.method public isReady()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isReady(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 64
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    goto :goto_0

    :cond_0
    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 66
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError(I)V

    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    new-instance v0, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    .line 62
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    invoke-virtual {v1, p0}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/source/hls/SampleQueueMappingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    .line 74
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    const/4 p0, -0x4

    return p0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 78
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    :cond_1
    return v1
.end method

.method public skipData(J)I
    .locals 1

    .line 84
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->hasValidSampleQueueIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    .line 85
    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->skipData(IJ)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public unbindSampleQueue()V
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleStreamWrapper:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->trackGroupIndex:I

    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->unbindSampleQueue(I)V

    iput v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->sampleQueueIndex:I

    :cond_0
    return-void
.end method
