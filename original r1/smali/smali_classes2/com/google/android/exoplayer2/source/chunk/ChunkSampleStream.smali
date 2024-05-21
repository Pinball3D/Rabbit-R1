.class public Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/SampleStream;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;,
        Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplayer2/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/source/SampleStream;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChunkSampleStream"


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

.field private final chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

.field private final embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

.field private final embeddedTrackTypes:[I

.field private final embeddedTracksSelected:[Z

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field loadingFinished:Z

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

.field private nextNotifyPrimaryFormatMediaChunkIndex:I

.field private pendingResetPositionUs:J

.field private primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

.field public final primaryTrackType:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I[I[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/chunk/ChunkSource;Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[I[",
            "Lcom/google/android/exoplayer2/Format;",
            "TT;",
            "Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback<",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>;>;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "J",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            ")V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [I

    :cond_0
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    if-nez p3, :cond_1

    new-array p3, v0, [Lcom/google/android/exoplayer2/Format;

    :cond_1
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    iput-object p12, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput-object p11, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 134
    new-instance p3, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p4, "ChunkSampleStream"

    invoke-direct {p3, p4}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 135
    new-instance p3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    invoke-direct {p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 136
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 137
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 139
    array-length p2, p2

    .line 140
    new-array p3, p2, [Lcom/google/android/exoplayer2/source/SampleQueue;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 141
    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    add-int/lit8 p3, p2, 0x1

    .line 142
    new-array p4, p3, [I

    .line 143
    new-array p3, p3, [Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 146
    invoke-static {p6, p9, p10}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithDrm(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 147
    aput p1, p4, v0

    .line 148
    aput-object p5, p3, v0

    :goto_0
    if-ge v0, p2, :cond_2

    .line 151
    invoke-static {p6}, Lcom/google/android/exoplayer2/source/SampleQueue;->createWithoutDrm(Lcom/google/android/exoplayer2/upstream/Allocator;)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object p1

    iget-object p5, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 152
    aput-object p1, p5, v0

    add-int/lit8 p5, v0, 0x1

    .line 153
    aput-object p1, p3, p5

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 154
    aget p1, p1, v0

    aput p1, p4, p5

    move v0, p5

    goto :goto_0

    .line 157
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-direct {p1, p4, p3}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;-><init>([I[Lcom/google/android/exoplayer2/source/SampleQueue;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Z
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[I
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)[Lcom/google/android/exoplayer2/Format;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackFormats:[Lcom/google/android/exoplayer2/Format;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method private discardDownstreamMediaChunks(I)V
    .locals 2

    const/4 v0, 0x0

    .line 728
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 731
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 733
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    iget v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    :cond_0
    return-void
.end method

.method private discardUpstream(I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 671
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 673
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    .line 676
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_2

    return-void

    .line 687
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    .line 688
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 689
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 693
    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 795
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 796
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    iget p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 798
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v1, 0x0

    .line 799
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 800
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 801
    aget-object p1, p1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardUpstreamSamples(I)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 784
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return-object p0
.end method

.method private haveReadFromMediaChunk(I)Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 710
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 711
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    const/4 v3, 0x1

    if-le v0, v2, :cond_0

    return v3

    :cond_0
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 714
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 715
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v4

    if-le v2, v4, :cond_1

    return v3

    :cond_2
    return v1
.end method

.method private isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 0

    .line 698
    instance-of p0, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    return p0
.end method

.method private maybeNotifyPrimaryTrackFormatChanged()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 739
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    add-int/lit8 v1, v1, -0x1

    .line 741
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    if-gt v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    .line 744
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeNotifyPrimaryTrackFormatChanged(I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 749
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 750
    iget-object v7, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 751
    invoke-virtual {v7, v0}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    .line 752
    iget v3, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionReason:I

    iget-object v4, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v5, p1, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    move-object v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    :cond_0
    iput-object v7, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryDownstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method private primarySampleIndexToMediaChunkIndex(II)I
    .locals 2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 775
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 776
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    if-le v0, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    return p2

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 780
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private resetSampleQueues()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 702
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 703
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 704
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 25

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 563
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 567
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v4

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_0
    move-object v11, v3

    move-wide v9, v4

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v12, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    move-wide/from16 v7, p1

    .line 577
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getNextChunk(JJLjava/util/List;Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 578
    iget-boolean v3, v3, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->endOfStream:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 579
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextChunkHolder:Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;

    .line 580
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkHolder;->clear()V

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x1

    if-eqz v3, :cond_2

    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    iput-boolean v7, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    return v7

    :cond_2
    if-nez v4, :cond_3

    return v2

    :cond_3
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 593
    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 594
    move-object v3, v4

    check-cast v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz v1, :cond_5

    .line 600
    iget-wide v8, v3, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    cmp-long v1, v8, v10

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 601
    invoke-virtual {v1, v10, v11}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 602
    array-length v8, v1

    :goto_1
    if-ge v2, v8, :cond_4

    aget-object v9, v1, v2

    iget-wide v10, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    .line 603
    invoke-virtual {v9, v10, v11}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput-wide v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :cond_5
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    .line 608
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->init(Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 609
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 610
    :cond_6
    instance-of v1, v4, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    if-eqz v1, :cond_7

    .line 611
    move-object v1, v4

    check-cast v1, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkOutput:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunkOutput;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/chunk/InitializationChunk;->init(Lcom/google/android/exoplayer2/source/chunk/ChunkExtractor$TrackOutputProvider;)V

    :cond_7
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 613
    iget v3, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    .line 615
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 614
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v12

    iget-object v14, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 616
    new-instance v15, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v9, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v8, v15

    invoke-direct/range {v8 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v1, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v0, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v2, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v3, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v5, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v10, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move/from16 v16, v1

    move/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v5

    move-wide/from16 v21, v8

    move-wide/from16 v23, v10

    invoke-virtual/range {v14 .. v24}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return v7

    :cond_8
    :goto_3
    return v2
.end method

.method public discardBuffer(JZ)V
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 173
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstIndex()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    const/4 v2, 0x1

    .line 174
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 175
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstIndex()I

    move-result p1

    if-le p1, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 177
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getFirstTimestampUs()J

    move-result-wide v0

    const/4 p2, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 178
    array-length v3, v2

    if-ge p2, v3, :cond_1

    .line 179
    aget-object v2, v2, p2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    aget-boolean v3, v3, p2

    invoke-virtual {v2, v0, v1, p3, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardTo(JZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardDownstreamMediaChunks(I)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 248
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 233
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 235
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChunkSource()Lcom/google/android/exoplayer2/source/chunk/ChunkSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    return-object p0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 635
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 638
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 630
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p0

    return p0
.end method

.method isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isReady()Z
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->isReady(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maybeThrowError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 370
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 371
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->maybeThrowError()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 372
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 373
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->maybeThrowError()V

    :cond_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 447
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 451
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 455
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 456
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 457
    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 467
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    goto :goto_0

    .line 469
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 471
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 472
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 476
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 55
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 419
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 420
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 424
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 429
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 430
    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 439
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 55
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 487
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v12

    .line 488
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v14

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 489
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v15, 0x1

    add-int/lit8 v10, v2, -0x1

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    if-eqz v14, :cond_1

    .line 491
    invoke-direct {v0, v10}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v8, v15

    .line 492
    :goto_1
    new-instance v9, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 496
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 497
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    move-object v2, v9

    move v15, v8

    move/from16 v17, v14

    move-object v14, v9

    move-wide/from16 v8, p2

    move/from16 v29, v10

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 501
    new-instance v2, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v4, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 508
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v24

    iget-wide v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 509
    invoke-static {v8, v9}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v26

    move-object/from16 v18, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    invoke-direct/range {v18 .. v27}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 510
    new-instance v3, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct {v3, v14, v2, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 514
    invoke-interface {v2, v1, v15, v3, v5}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->onChunkLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;ZLcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v15, :cond_3

    .line 517
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    if-eqz v17, :cond_5

    move/from16 v6, v29

    .line 519
    invoke-direct {v0, v6}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    move-result-object v6

    if-ne v6, v1, :cond_2

    const/4 v11, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    .line 520
    :goto_2
    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 521
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    iput-wide v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    goto :goto_3

    :cond_3
    const-string v2, "ChunkSampleStream"

    const-string v6, "Ignoring attempt to cancel non-cancelable load."

    .line 526
    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 532
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    .line 535
    invoke-static {v6, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_4

    .line 536
    :cond_6
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    .line 539
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v3

    const/4 v6, 0x1

    xor-int/2addr v3, v6

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 540
    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v8, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primaryTrackType:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object/from16 v16, v6

    move-object/from16 v17, v14

    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v11

    move-wide/from16 v23, v12

    move-wide/from16 v25, v4

    move-object/from16 v27, p6

    move/from16 v28, v3

    invoke-virtual/range {v16 .. v28}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 553
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->callback:Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;

    .line 554
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SequenceableLoader$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_8
    return-object v2
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 55
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p0

    return-object p0
.end method

.method public onLoaderReleased()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 351
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 352
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 353
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    .line 355
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->release()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    if-eqz v0, :cond_1

    .line 357
    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;->onSampleStreamReleased(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;)V

    :cond_1
    return-void
.end method

.method public readData(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 3

    .line 380
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 384
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 385
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 392
    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/google/android/exoplayer2/source/SampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p0

    return p0
.end method

.method public reevaluateBuffer(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 644
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 648
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 649
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 650
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 651
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->haveReadFromMediaChunk(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 655
    invoke-interface {v1, p1, p2, v0, v2}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 656
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    .line 657
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 658
    check-cast v0, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->chunkSource:Lcom/google/android/exoplayer2/source/chunk/ChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->readOnlyMediaChunks:Ljava/util/List;

    .line 664
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 665
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    .line 666
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->discardUpstream(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V

    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->releaseCallback:Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$ReleaseCallback;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 342
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 343
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 344
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 346
    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    return-void
.end method

.method public seekToUs(J)V
    .locals 8

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->lastSeekPositionUs:J

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 267
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    .line 268
    iget-wide v3, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->startTimeUs:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 269
    iget-wide v4, v2, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->clippedStartTimeUs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    if-lez v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x0

    :goto_2
    const/4 v1, 0x1

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 284
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(I)Z

    move-result v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 288
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->getNextLoadPositionUs()J

    move-result-wide v3

    cmp-long v3, p1, v3

    if-gez v3, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    move v3, v0

    .line 287
    :goto_3
    invoke-virtual {v2, p1, p2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v2

    :goto_4
    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 295
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v2

    .line 294
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleIndexToMediaChunkIndex(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 297
    array-length v2, p0

    :goto_5
    if-ge v0, v2, :cond_9

    aget-object v3, p0, v0

    .line 298
    invoke-virtual {v3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->pendingResetPositionUs:J

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->mediaChunks:Ljava/util/ArrayList;

    .line 304
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iput v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->nextNotifyPrimaryFormatMediaChunkIndex:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 306
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 308
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 309
    array-length p2, p1

    :goto_6
    if-ge v0, p2, :cond_7

    aget-object v1, p1, v0

    .line 310
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_7
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 312
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_7

    :cond_8
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 314
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 315
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->resetSampleQueues()V

    :cond_9
    :goto_7
    return-void
.end method

.method public selectEmbeddedTrack(JI)Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream<",
            "TT;>.EmbeddedSampleStream;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 196
    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTrackTypes:[I

    .line 197
    aget v1, v1, v0

    if-ne v1, p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 198
    aget-boolean p3, p3, v0

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedTracksSelected:[Z

    .line 199
    aput-boolean v1, p3, v0

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 200
    aget-object p3, p3, v0

    invoke-virtual {p3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    .line 201
    new-instance p1, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->embeddedSampleQueues:[Lcom/google/android/exoplayer2/source/SampleQueue;

    aget-object p2, p2, v0

    invoke-direct {p1, p0, p0, p2, v0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream$EmbeddedSampleStream;-><init>(Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;Lcom/google/android/exoplayer2/source/SampleQueue;I)V

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public skipData(J)I
    .locals 3

    .line 397
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->loadingFinished:Z

    .line 400
    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->canceledMediaChunk:Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;

    if-eqz p2, :cond_1

    .line 405
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/source/chunk/BaseMediaChunk;->getFirstSampleIndex(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 406
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v0

    sub-int/2addr p2, v0

    .line 407
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->primarySampleQueue:Lcom/google/android/exoplayer2/source/SampleQueue;

    .line 409
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    .line 410
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/chunk/ChunkSampleStream;->maybeNotifyPrimaryTrackFormatChanged()V

    return p1
.end method
