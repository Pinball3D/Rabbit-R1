.class final Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;
.super Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;
.source "DefaultSsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamElementIterator"
.end annotation


# instance fields
.field private final streamElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

.field private final trackIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;II)V
    .locals 4

    int-to-long v0, p3

    .line 371
    iget p3, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    add-int/lit8 p3, p3, -0x1

    int-to-long v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->streamElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->trackIndex:I

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .locals 5

    .line 391
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->getChunkStartTimeUs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->streamElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 392
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->getCurrentIndex()J

    move-result-wide v3

    long-to-int p0, v3

    invoke-virtual {v2, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getChunkDurationUs(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getChunkStartTimeUs()J
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->streamElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    .line 386
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->getCurrentIndex()J

    move-result-wide v1

    long-to-int p0, v1

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSpec()Lcom/google/android/exoplayer2/upstream/DataSpec;
    .locals 4

    .line 378
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->checkInBounds()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->streamElement:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;

    iget v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->trackIndex:I

    .line 379
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$StreamElementIterator;->getCurrentIndex()J

    move-result-wide v2

    long-to-int p0, v2

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object p0

    .line 380
    new-instance v0, Lcom/google/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method
