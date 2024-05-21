.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.implements Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;
.implements Lcom/google/android/exoplayer2/extractor/ExtractorOutput;
.implements Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;,
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;,
        Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer2/upstream/Loader$Callback<",
        "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
        ">;",
        "Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;",
        "Lcom/google/android/exoplayer2/source/SequenceableLoader;",
        "Lcom/google/android/exoplayer2/extractor/ExtractorOutput;",
        "Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;"
    }
.end annotation


# static fields
.field private static final MAPPABLE_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL:I = -0x2

.field public static final SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL:I = -0x3

.field public static final SAMPLE_QUEUE_INDEX_PENDING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "HlsSampleStreamWrapper"


# instance fields
.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private final callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

.field private final chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

.field private downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

.field private final drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

.field private emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private enabledTrackGroupCount:I

.field private final handler:Landroid/os/Handler;

.field private haveAudioVideoSampleQueues:Z

.field private final hlsSampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekPositionUs:J

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

.field private final loader:Lcom/google/android/exoplayer2/upstream/Loader;

.field private loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

.field private loadingFinished:Z

.field private final maybeFinishPrepareRunnable:Ljava/lang/Runnable;

.field private final mediaChunks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field private final metadataType:I

.field private final muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

.field private final nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

.field private final onTracksEndedRunnable:Ljava/lang/Runnable;

.field private optionalTrackGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field

.field private pendingResetPositionUs:J

.field private pendingResetUpstreamFormats:Z

.field private prepared:Z

.field private primarySampleQueueIndex:I

.field private primarySampleQueueType:I

.field private primaryTrackGroupIndex:I

.field private final readOnlyMediaChunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private sampleOffsetUs:J

.field private sampleQueueIndicesByType:Landroid/util/SparseIntArray;

.field private sampleQueueIsAudioVideoFlags:[Z

.field private sampleQueueMappingDoneByType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sampleQueueTrackIds:[I

.field private sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

.field private sampleQueuesBuilt:Z

.field private sampleQueuesEnabledStates:[Z

.field private seenFirstTrackSelection:Z

.field private sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

.field private trackGroupToSampleQueueIndex:[I

.field private trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

.field private final trackType:I

.field private tracksEnded:Z

.field private final uid:Ljava/lang/String;

.field private upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public static synthetic $r8$lambda$6vTR3mtGTvT72nPYfSpGJ3S1EYI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEnded()V

    return-void
.end method

.method public static synthetic $r8$lambda$FTpP0pC43I2Fmbrry86yPSv4RFI(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 123
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;Ljava/util/Map;Lcom/google/android/exoplayer2/upstream/Allocator;JLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;",
            "Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "J",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;",
            "Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;",
            "I)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    iput-object p6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iput-object p9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    iput-object p10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iput-object p11, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iput-object p12, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iput-object p13, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iput p14, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->metadataType:I

    .line 235
    new-instance p1, Lcom/google/android/exoplayer2/upstream/Loader;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 236
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 238
    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 239
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 243
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 244
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 245
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 248
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 251
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 253
    invoke-static {}, Lcom/google/android/exoplayer2/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide p7, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-void
.end method

.method private assertIsPrepared()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    .line 1496
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1497
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    .line 1498
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private buildTracksFromSampleStreams()V
    .locals 15
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups",
            "trackGroupToSampleQueueIndex"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1370
    array-length v0, v0

    const/4 v1, -0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v1

    move v6, v2

    move v4, v3

    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v4, v0, :cond_5

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1373
    aget-object v9, v9, v4

    .line 1374
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/exoplayer2/Format;

    iget-object v9, v9, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1376
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    .line 1378
    :cond_0
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    goto :goto_1

    .line 1380
    :cond_1
    invoke-static {v9}, Lcom/google/android/exoplayer2/util/MimeTypes;->isText(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    goto :goto_1

    :cond_2
    move v7, v1

    .line 1385
    :goto_1
    invoke-static {v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v8

    invoke-static {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v9

    if-le v8, v9, :cond_3

    move v6, v4

    move v5, v7

    goto :goto_2

    :cond_3
    if-ne v7, v5, :cond_4

    if-eq v6, v2, :cond_4

    move v6, v2

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 1396
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    .line 1397
    iget v4, v1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    iput v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    .line 1401
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    move v2, v3

    :goto_3
    if-ge v2, v0, :cond_6

    iget-object v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 1403
    aput v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1407
    :cond_6
    new-array v2, v0, [Lcom/google/android/exoplayer2/source/TrackGroup;

    move v9, v3

    :goto_4
    if-ge v9, v0, :cond_d

    iget-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1409
    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer2/Format;

    if-ne v9, v6, :cond_a

    .line 1411
    new-array v11, v4, [Lcom/google/android/exoplayer2/Format;

    move v12, v3

    :goto_5
    if-ge v12, v4, :cond_9

    .line 1413
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    if-ne v5, v8, :cond_7

    iget-object v14, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    if-eqz v14, :cond_7

    .line 1415
    invoke-virtual {v13, v14}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    :cond_7
    if-ne v4, v8, :cond_8

    .line 1422
    invoke-virtual {v10, v13}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    goto :goto_6

    .line 1423
    :cond_8
    invoke-static {v13, v10, v8}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v13

    :goto_6
    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1425
    :cond_9
    new-instance v10, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v12, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    invoke-direct {v10, v12, v11}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v10, v2, v9

    iput v9, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    goto :goto_9

    :cond_a
    if-ne v5, v7, :cond_b

    .line 1431
    iget-object v11, v10, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->muxedAudioFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_7

    :cond_b
    const/4 v11, 0x0

    .line 1434
    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->uid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":muxed:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-ge v9, v6, :cond_c

    move v13, v9

    goto :goto_8

    :cond_c
    add-int/lit8 v13, v9, -0x1

    :goto_8
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1435
    new-instance v13, Lcom/google/android/exoplayer2/source/TrackGroup;

    new-array v14, v8, [Lcom/google/android/exoplayer2/Format;

    .line 1438
    invoke-static {v11, v10, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;

    move-result-object v10

    aput-object v10, v14, v3

    invoke-direct {v13, v12, v14}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v13, v2, v9

    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1441
    :cond_d
    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    if-nez v0, :cond_e

    move v3, v8

    .line 1442
    :cond_e
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 1443
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    return-void
.end method

.method private canDiscardUpstreamMediaChunksFromIndex(I)Z
    .locals 4

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1249
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1250
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1257
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1258
    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 1259
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1260
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getReadIndex()I

    move-result v3

    if-le v3, v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;
    .locals 2

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unmapped track with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " of type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    new-instance p0, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;-><init>()V

    return-object p0
.end method

.method private createSampleQueue(II)Lcom/google/android/exoplayer2/source/SampleQueue;
    .locals 9

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1121
    array-length v0, v0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1124
    :cond_1
    :goto_0
    new-instance v8, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmEventDispatcher:Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->overridingDrmInitData:Ljava/util/Map;

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;)V

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 1126
    invoke-virtual {v8, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setStartTimeUs(J)V

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1128
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    :cond_2
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    .line 1130
    invoke-virtual {v8, v2, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSampleOffsetUs(J)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz v2, :cond_3

    .line 1132
    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 1134
    :cond_3
    invoke-virtual {v8, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    add-int/lit8 v3, v0, 0x1

    .line 1135
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1136
    aput p1, v2, v0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1137
    invoke-static {p1, v8}, Lcom/google/android/exoplayer2/util/Util;->nullSafeArrayAppend([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1138
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1139
    aput-boolean v1, p1, v0

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 1141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    .line 1142
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 1143
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result p1

    iget v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    invoke-static {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getTrackTypeScore(I)I

    move-result v1

    if-le p1, v1, :cond_4

    iput v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 1147
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    return-object v8
.end method

.method private createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1447
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1448
    aget-object v2, p1, v1

    .line 1449
    iget v3, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [Lcom/google/android/exoplayer2/Format;

    move v4, v0

    .line 1450
    :goto_1
    iget v5, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v4, v5, :cond_0

    .line 1451
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmSessionManager:Lcom/google/android/exoplayer2/drm/DrmSessionManager;

    .line 1452
    invoke-interface {v6, v5}, Lcom/google/android/exoplayer2/drm/DrmSessionManager;->getCryptoType(Lcom/google/android/exoplayer2/Format;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/Format;->copyWithCryptoType(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1454
    :cond_0
    new-instance v4, Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/TrackGroup;->id:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;-><init>(Ljava/lang/String;[Lcom/google/android/exoplayer2/Format;)V

    aput-object v4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;-><init>([Lcom/google/android/exoplayer2/source/TrackGroup;)V

    return-object p0
.end method

.method private static deriveFormat(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/Format;
    .locals 7

    if-nez p0, :cond_0

    return-object p1

    .line 1542
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 1545
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecCountOfType(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1548
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1549
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMediaMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1554
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1555
    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/MimeTypes;->getCodecsCorrespondingToMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    iget-object v3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1562
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->id:Ljava/lang/String;

    .line 1563
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->label:Ljava/lang/String;

    .line 1564
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplayer2/Format;->language:Ljava/lang/String;

    .line 1565
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->selectionFlags:I

    .line 1566
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    .line 1567
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz p2, :cond_2

    .line 1568
    iget v6, p0, Lcom/google/android/exoplayer2/Format;->averageBitrate:I

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v4

    if-eqz p2, :cond_3

    .line 1569
    iget p2, p0, Lcom/google/android/exoplayer2/Format;->peakBitrate:I

    goto :goto_2

    :cond_3
    move p2, v5

    :goto_2
    invoke-virtual {v4, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    .line 1570
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1573
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->width:I

    .line 1574
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->height:I

    .line 1575
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget v4, p0, Lcom/google/android/exoplayer2/Format;->frameRate:F

    .line 1576
    invoke-virtual {v1, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setFrameRate(F)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_4
    if-eqz v3, :cond_5

    .line 1580
    invoke-virtual {p2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1583
    :cond_5
    iget v1, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-eq v1, v5, :cond_6

    if-ne v0, v2, :cond_6

    .line 1584
    iget v0, p0, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1587
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v0, :cond_8

    .line 1588
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 1589
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eqz v0, :cond_7

    .line 1590
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    .line 1592
    :cond_7
    invoke-virtual {p2, p0}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    .line 1595
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method private discardUpstream(I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 1028
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1031
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_1

    .line 1032
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->canDiscardUpstreamMediaChunksFromIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_1
    if-ne p1, v1, :cond_2

    return-void

    .line 1041
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    .line 1042
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1043
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1046
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->invalidateExtractor()V

    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    .line 1050
    iget-wide v3, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->upstreamDiscarded(IJJ)V

    return-void
.end method

.method private discardUpstreamMediaChunksFromIndex(I)Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1271
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1272
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1273
    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 1274
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1275
    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->discardUpstreamSamples(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z
    .locals 4

    .line 1238
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1239
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 1241
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->peekSourceId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static formatsMatch(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z
    .locals 6

    .line 1603
    iget-object v0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1604
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1605
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    .line 1607
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    if-ne v2, p0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    return v4

    .line 1608
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v5

    :cond_2
    const-string v1, "application/cea-608"

    .line 1611
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "application/cea-708"

    .line 1612
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    return v4

    .line 1613
    :cond_4
    :goto_1
    iget p0, p0, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->accessibilityChannel:I

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    return v4
.end method

.method private getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1460
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return-object p0
.end method

.method private getMappedTrackOutput(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    .line 1106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIndicesByType:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    .line 1107
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 1112
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1113
    aput p1, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1115
    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1116
    aget-object p0, p0, v0

    goto :goto_0

    .line 1117
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getTrackTypeScore(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private initMediaChunkLoad(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sourceChunk:Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 1011
    iget-object v0, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 1013
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1015
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 1016
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getWriteIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1018
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->init(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;Lcom/google/common/collect/ImmutableList;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1019
    array-length v0, p0

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v1, p0, v3

    .line 1020
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    .line 1021
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->shouldSpliceIn:Z

    if-eqz v2, :cond_1

    .line 1022
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->splice()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z
    .locals 0

    .line 1599
    instance-of p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    return p0
.end method

.method private isPendingReset()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

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

.method private mapSampleQueuesToMatchTrackGroups()V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupToSampleQueueIndex"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroups"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1316
    iget v0, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    .line 1317
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    const/4 v2, -0x1

    .line 1318
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1320
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 1321
    aget-object v4, v4, v3

    .line 1322
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/Format;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1323
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->formatsMatch(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 1324
    aput v3, v4, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 1329
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    .line 1330
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->bindSampleQueue()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private maybeFinishPrepare()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1296
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1297
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    if-eqz v0, :cond_3

    .line 1304
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mapSampleQueuesToMatchTrackGroups()V

    goto :goto_1

    .line 1307
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->buildTracksFromSampleStreams()V

    .line 1308
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 1309
    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPrepared()V

    :cond_4
    :goto_1
    return-void
.end method

.method private onTracksEnded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    .line 1289
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepare()V

    return-void
.end method

.method private resetSampleQueues()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1281
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    .line 1282
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    return-void
.end method

.method private seekInsideBufferUs(J)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1474
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1476
    aget-object v3, v3, v2

    .line 1477
    invoke-virtual {v3, p1, p2, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1482
    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->haveAudioVideoSampleQueues:Z

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private setIsPrepared()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroups",
            "optionalTrackGroups"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    return-void
.end method

.method private updateSampleStreams([Lcom/google/android/exoplayer2/source/SampleStream;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 1229
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1230
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 1232
    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public bindSampleQueueToSampleStream(I)I
    .locals 3

    .line 303
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 304
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 306
    aget v0, v0, p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, -0x3

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 312
    aget-boolean p1, p0, v0

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    .line 316
    aput-boolean p1, p0, v0

    return v0
.end method

.method public continueLoading(J)Z
    .locals 22

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 741
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    .line 747
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 750
    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    iget-wide v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    .line 751
    invoke-virtual {v8, v9, v10}, Lcom/google/android/exoplayer2/source/SampleQueue;->setStartTimeUs(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 755
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v3

    .line 757
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 758
    iget-wide v3, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    goto :goto_1

    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 759
    iget-wide v6, v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    :goto_1
    move-object v10, v1

    move-wide v8, v3

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 761
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->clear()V

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 766
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move v11, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v11, v3

    :goto_3
    iget-object v12, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    move-wide/from16 v6, p1

    .line 762
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getNextChunk(JJLjava/util/List;ZLcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;)V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 768
    iget-boolean v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->endOfStream:Z

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 769
    iget-object v4, v4, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->chunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->nextChunkHolder:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;

    .line 770
    iget-object v5, v5, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource$HlsChunkHolder;->playlistUrl:Landroid/net/Uri;

    if-eqz v1, :cond_6

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    iput-boolean v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    return v3

    :cond_6
    if-nez v4, :cond_8

    if-eqz v5, :cond_7

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 780
    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onPlaylistRefreshRequired(Landroid/net/Uri;)V

    :cond_7
    return v2

    .line 785
    :cond_8
    invoke-static {v4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 786
    move-object v1, v4

    check-cast v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->initMediaChunkLoad(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V

    :cond_9
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 789
    iget v5, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    .line 791
    invoke-interface {v2, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 790
    invoke-virtual {v1, v4, v0, v2}, Lcom/google/android/exoplayer2/upstream/Loader;->startLoading(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;Lcom/google/android/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v9

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 792
    new-instance v12, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v6, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v8, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;J)V

    iget v13, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v14, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v15, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v0, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v1, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v5, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v7, v4, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move/from16 v16, v0

    move-object/from16 v17, v1

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    invoke-virtual/range {v11 .. v21}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return v3

    :cond_a
    :goto_4
    return v2
.end method

.method public continuePreparing()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 260
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 476
    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 478
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, p3, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->discardTo(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public endTracks()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onTracksEndedRunnable:Ljava/lang/Runnable;

    .line 1154
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 607
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getAdjustedSeekPositionUs(JLcom/google/android/exoplayer2/SeekParameters;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getBufferedPositionUs()J
    .locals 6

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 709
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 713
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isLoadCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 717
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 719
    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 722
    array-length v2, p0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    .line 723
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 732
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    .line 735
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->endTimeUs:J

    :goto_0
    return-wide v0
.end method

.method public getPrimaryTrackGroupIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    return p0
.end method

.method public getTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    return-object p0
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 806
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p0

    return p0
.end method

.method public isReady(I)Z
    .locals 1

    .line 613
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    aget-object p1, v0, p1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    invoke-virtual {p1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->isReady(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoSampleStream()Z
    .locals 1

    iget p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 622
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->maybeThrowError()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 623
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowError(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 618
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeThrowError()V

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Loading finished before preparation is complete."

    const/4 v0, 0x0

    .line 288
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 875
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 879
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 880
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 883
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 884
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 885
    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    .line 895
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v1, :cond_1

    .line 896
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    :cond_1
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 899
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 0

    .line 92
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCanceled(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJZ)V

    return-void
.end method

.method public onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 844
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onChunkLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;)V

    .line 845
    new-instance v2, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 849
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 850
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 853
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v2

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 854
    iget-wide v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 855
    iget v5, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v4, v2

    invoke-virtual/range {v3 .. v13}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 865
    invoke-virtual {p0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 867
    invoke-interface {v1, p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 0

    .line 92
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadCompleted(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJ)V

    return-void
.end method

.method public onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p6

    .line 911
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isMediaChunk(Lcom/google/android/exoplayer2/source/chunk/Chunk;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 912
    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 913
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v13, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    if-eqz v3, :cond_1

    .line 915
    move-object v3, v13

    check-cast v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v3, v3, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    const/16 v4, 0x19a

    if-eq v3, v4, :cond_0

    const/16 v4, 0x194

    if-ne v3, v4, :cond_1

    .line 920
    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/upstream/Loader;->RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    return-object v0

    .line 923
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->bytesLoaded()J

    move-result-wide v3

    .line 925
    new-instance v5, Lcom/google/android/exoplayer2/source/LoadEventInfo;

    iget-wide v6, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    iget-object v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->dataSpec:Lcom/google/android/exoplayer2/upstream/DataSpec;

    .line 929
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getUri()Landroid/net/Uri;

    move-result-object v18

    .line 930
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplayer2/source/chunk/Chunk;->getResponseHeaders()Ljava/util/Map;

    move-result-object v19

    move-object v14, v5

    move-wide v15, v6

    move-object/from16 v17, v8

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-wide/from16 v24, v3

    invoke-direct/range {v14 .. v25}, Lcom/google/android/exoplayer2/source/LoadEventInfo;-><init>(JLcom/google/android/exoplayer2/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 934
    new-instance v6, Lcom/google/android/exoplayer2/source/MediaLoadData;

    iget v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v11, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    .line 941
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v26

    iget-wide v14, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    .line 942
    invoke-static {v14, v15}, Lcom/google/android/exoplayer2/util/Util;->usToMs(J)J

    move-result-wide v28

    move-object/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    move-object/from16 v25, v11

    invoke-direct/range {v20 .. v29}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 943
    new-instance v7, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v8, p7

    invoke-direct {v7, v5, v6, v13, v8}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplayer2/source/LoadEventInfo;Lcom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;I)V

    iget-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 949
    invoke-virtual {v8}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v8

    .line 948
    invoke-interface {v6, v8, v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_2

    .line 950
    iget v9, v6, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 952
    iget-wide v10, v6, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    .line 953
    invoke-virtual {v9, v1, v10, v11}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->maybeExcludeTrack(Lcom/google/android/exoplayer2/source/chunk/Chunk;J)Z

    move-result v6

    move v15, v6

    goto :goto_0

    :cond_2
    move v15, v8

    :goto_0
    const/4 v6, 0x1

    if-eqz v15, :cond_6

    if-eqz v2, :cond_5

    const-wide/16 v9, 0x0

    cmp-long v2, v3, v9

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 958
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-ne v2, v1, :cond_3

    move v8, v6

    .line 959
    :cond_3
    invoke-static {v8}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 960
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 963
    invoke-static {v2}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->invalidateExtractor()V

    .line 966
    :cond_5
    :goto_1
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    :goto_2
    move-object/from16 v16, v2

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 968
    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v2

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v9

    if-eqz v4, :cond_7

    .line 971
    invoke-static {v8, v2, v3}, Lcom/google/android/exoplayer2/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object v2

    goto :goto_2

    .line 972
    :cond_7
    sget-object v2, Lcom/google/android/exoplayer2/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    goto :goto_2

    .line 975
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v2

    xor-int/lit8 v17, v2, 0x1

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 976
    iget v4, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->type:I

    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    iget-object v7, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget v8, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionReason:I

    iget-object v9, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->startTimeUs:J

    iget-wide v12, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->endTimeUs:J

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-wide v9, v10

    move-wide v11, v12

    move-object/from16 v13, p6

    move/from16 v14, v17

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplayer2/source/LoadEventInfo;IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v17, :cond_8

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    .line 989
    iget-wide v3, v1, Lcom/google/android/exoplayer2/source/chunk/Chunk;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_8
    if-eqz v15, :cond_a

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-nez v1, :cond_9

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 994
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->continueLoading(J)Z

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 996
    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplayer2/source/SequenceableLoader;)V

    :cond_a
    :goto_4
    return-object v16
.end method

.method public bridge synthetic onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
    .locals 0

    .line 92
    check-cast p1, Lcom/google/android/exoplayer2/source/chunk/Chunk;

    invoke-virtual/range {p0 .. p7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->onLoadError(Lcom/google/android/exoplayer2/source/chunk/Chunk;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;

    move-result-object p0

    return-object p0
.end method

.method public onLoaderReleased()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 555
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 556
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNewExtractor()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueMappingDoneByType:Ljava/util/Set;

    .line 1173
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public onPlaylistError(Landroid/net/Uri;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 573
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->obtainsChunksForPlaylist(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadErrorHandlingPolicy:Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 582
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    move-result-object v0

    .line 581
    invoke-interface {p3, v0, p2}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;->getFallbackSelectionFor(Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 583
    iget p3, p2, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->type:I

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 585
    iget-wide p2, p2, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackSelection;->exclusionDurationMs:J

    goto :goto_0

    :cond_1
    move-wide p2, v2

    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 590
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->onPlaylistError(Landroid/net/Uri;J)Z

    move-result p0

    if-eqz p0, :cond_2

    cmp-long p0, p2, v2

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public onPlaylistUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 527
    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 529
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 531
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->publish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 534
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 535
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->maybeFinishPrepareRunnable:Ljava/lang/Runnable;

    .line 1166
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public varargs prepareWithMultivariantPlaylistInfo([Lcom/google/android/exoplayer2/source/TrackGroup;I[I)V
    .locals 4

    .line 275
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createTrackGroupArrayWithDrmInfo([Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 276
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    .line 277
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v1, p3, v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->optionalTrackGroups:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 278
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->callback:Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;

    .line 281
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$Callback;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->setIsPrepared()V

    return-void
.end method

.method public readData(ILcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 11

    .line 631
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 636
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 638
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 639
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->finishedReadingChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 642
    invoke-static {v3, v2, v0}, Lcom/google/android/exoplayer2/util/Util;->removeRange(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 643
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    .line 644
    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 645
    invoke-virtual {v10, v3}, Lcom/google/android/exoplayer2/Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaSourceEventDispatcher:Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget v4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackType:I

    .line 646
    iget v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionReason:I

    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackSelectionData:Ljava/lang/Object;

    iget-wide v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->startTimeUs:J

    move-object v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(ILcom/google/android/exoplayer2/Format;ILjava/lang/Object;J)V

    :cond_2
    iput-object v10, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 656
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 661
    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 662
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;IZ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_8

    .line 664
    iget-object p4, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/Format;

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primarySampleQueueIndex:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 667
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->peekSourceId()I

    move-result p1

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 669
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget v0, v0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    if-eq v0, p1, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 673
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v2, p1, :cond_6

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 674
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->upstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    .line 675
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/Format;

    .line 676
    :goto_2
    invoke-virtual {p4, p0}, Lcom/google/android/exoplayer2/Format;->withManifestFormatInfo(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p4

    .line 678
    :cond_7
    iput-object p4, p2, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    :cond_8
    return p3
.end method

.method public reevaluateBuffer(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 811
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 815
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    .line 816
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingChunk:Lcom/google/android/exoplayer2/source/chunk/Chunk;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 817
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->shouldCancelLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 818
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 823
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lez v0, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    .line 825
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getChunkPublicationState(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 829
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 830
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    .line 833
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getPreferredQueueSize(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 834
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 835
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->discardUpstream(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public release()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->prepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 543
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 544
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->preRelease()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 547
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/upstream/Loader;->release(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->released:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->hlsSampleStreams:Ljava/util/ArrayList;

    .line 550
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public seekToUs(JZ)Z
    .locals 3

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    .line 492
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    .line 499
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekInsideBufferUs(J)Z

    move-result p3

    if-eqz p3, :cond_1

    return v2

    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetPositionUs:J

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 506
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 507
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 510
    array-length p2, p1

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object p3, p1, v2

    .line 511
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 514
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 516
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/upstream/Loader;->clearFatalError()V

    .line 517
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    :goto_1
    return v1
.end method

.method public selectTracks([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplayer2/source/SampleStream;[ZJZ)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v12, p5

    .line 352
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    iget v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    const/4 v14, 0x0

    move v4, v14

    .line 355
    :goto_0
    array-length v5, v1

    const/4 v6, 0x0

    const/4 v15, 0x1

    if-ge v4, v5, :cond_2

    .line 356
    aget-object v5, v2, v4

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    if-eqz v5, :cond_1

    .line 357
    aget-object v7, v1, v4

    if-eqz v7, :cond_0

    aget-boolean v7, p2, v4

    if-nez v7, :cond_1

    :cond_0
    iget v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    sub-int/2addr v7, v15

    iput v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 359
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->unbindSampleQueue()V

    .line 360
    aput-object v6, v2, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez p7, :cond_5

    iget-boolean v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-eqz v4, :cond_3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_3
    iget-wide v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->lastSeekPositionUs:J

    cmp-long v3, v12, v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v3, v14

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v15

    :goto_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 373
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackSelection()Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v4

    move/from16 v16, v3

    move-object v11, v4

    move v3, v14

    .line 376
    :goto_3
    array-length v5, v1

    if-ge v3, v5, :cond_a

    .line 377
    aget-object v5, v1, v3

    if-nez v5, :cond_6

    goto :goto_5

    :cond_6
    iget-object v7, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroups:Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 381
    invoke-interface {v5}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->indexOf(Lcom/google/android/exoplayer2/source/TrackGroup;)I

    move-result v7

    iget v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->primaryTrackGroupIndex:I

    if-ne v7, v8, :cond_7

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 384
    invoke-virtual {v8, v5}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)V

    move-object v11, v5

    .line 386
    :cond_7
    aget-object v5, v2, v3

    if-nez v5, :cond_9

    iget v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    add-int/2addr v5, v15

    iput v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    .line 388
    new-instance v5, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-direct {v5, v0, v7}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;-><init>(Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;I)V

    aput-object v5, v2, v3

    .line 389
    aput-boolean v15, p4, v3

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    if-eqz v5, :cond_9

    .line 391
    aget-object v5, v2, v3

    check-cast v5, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStream;->bindSampleQueue()V

    if-nez v16, :cond_9

    iget-object v5, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 394
    aget v7, v8, v7

    aget-object v5, v5, v7

    .line 400
    invoke-virtual {v5, v12, v13, v15}, Lcom/google/android/exoplayer2/source/SampleQueue;->seekTo(JZ)Z

    move-result v7

    if-nez v7, :cond_8

    .line 401
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v15

    goto :goto_4

    :cond_8
    move v5, v14

    :goto_4
    move/from16 v16, v5

    :cond_9
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    iget v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->enabledTrackGroupCount:I

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 408
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->reset()V

    iput-object v6, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->downstreamTrackFormat:Lcom/google/android/exoplayer2/Format;

    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 412
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesBuilt:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 415
    array-length v3, v1

    :goto_6
    if-ge v14, v3, :cond_b

    aget-object v4, v1, v14

    .line 416
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardToEnd()V

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loader:Lcom/google/android/exoplayer2/upstream/Loader;

    .line 419
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/upstream/Loader;->cancelLoading()V

    goto/16 :goto_9

    .line 421
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->resetSampleQueues()V

    goto :goto_9

    :cond_d
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    .line 424
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 425
    invoke-static {v11, v4}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    if-nez v1, :cond_f

    const-wide/16 v3, 0x0

    cmp-long v1, v12, v3

    if-gez v1, :cond_e

    neg-long v3, v12

    :cond_e
    move-wide v6, v3

    .line 431
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getLastMediaChunk()Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 433
    invoke-virtual {v3, v1, v12, v13}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->createMediaChunkIterators(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;J)[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;

    move-result-object v17

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->readOnlyMediaChunks:Ljava/util/List;

    move-object v3, v11

    move-wide/from16 v4, p5

    move-object/from16 v18, v11

    move-object/from16 v11, v17

    .line 434
    invoke-interface/range {v3 .. v11}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 440
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v3

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->trackFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/source/TrackGroup;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    .line 441
    invoke-interface/range {v18 .. v18}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v3

    if-eq v3, v1, :cond_10

    :cond_f
    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->pendingResetUpstreamFormats:Z

    move v1, v15

    move/from16 v16, v1

    goto :goto_7

    :cond_10
    move/from16 v1, p7

    :goto_7
    if-eqz v16, :cond_12

    .line 457
    invoke-virtual {v0, v12, v13, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seekToUs(JZ)Z

    .line 459
    :goto_8
    array-length v1, v2

    if-ge v14, v1, :cond_12

    .line 460
    aget-object v1, v2, v14

    if-eqz v1, :cond_11

    .line 461
    aput-boolean v15, p4, v14

    :cond_11
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 467
    :cond_12
    :goto_9
    invoke-direct {v0, v2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->updateSampleStreams([Lcom/google/android/exoplayer2/source/SampleStream;)V

    iput-boolean v15, v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->seenFirstTrackSelection:Z

    return v16
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1216
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1218
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueIsAudioVideoFlags:[Z

    .line 1219
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 1220
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIsTimestampMaster(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->chunkSource:Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;

    .line 561
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsChunkSource;->setIsTimestampMaster(Z)V

    return-void
.end method

.method public setSampleOffsetUs(J)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleOffsetUs:J

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1185
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1186
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->setSampleOffsetUs(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public skipData(IJ)I
    .locals 2

    .line 684
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->isPendingReset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 688
    aget-object v0, v0, p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->loadingFinished:Z

    .line 689
    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getSkipCount(JZ)I

    move-result p2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->mediaChunks:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 692
    invoke-static {p0, p3}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;

    if-eqz p0, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->isPublished()Z

    move-result p3

    if-nez p3, :cond_1

    .line 694
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->getReadIndex()I

    move-result p3

    .line 695
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->getFirstSampleIndex(I)I

    move-result p0

    sub-int/2addr p0, p3

    .line 696
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 699
    :cond_1
    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->skip(I)V

    return p2
.end method

.method public track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;
    .locals 3

    sget-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->MAPPABLE_TYPES:Ljava/util/Set;

    .line 1059
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->getMappedTrackOutput(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueues:[Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    .line 1063
    array-length v2, v1

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueueTrackIds:[I

    .line 1064
    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 1065
    aget-object v0, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->tracksEnded:Z

    if-eqz v0, :cond_3

    .line 1073
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createFakeTrackOutput(II)Lcom/google/android/exoplayer2/extractor/DummyTrackOutput;

    move-result-object p0

    return-object p0

    .line 1076
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->createSampleQueue(II)Lcom/google/android/exoplayer2/source/SampleQueue;

    move-result-object v0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_6

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    if-nez p1, :cond_5

    .line 1082
    new-instance p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;

    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->metadataType:I

    invoke-direct {p1, v0, p2}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    :cond_5
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->emsgUnwrappingTrackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    return-object p0

    :cond_6
    return-object v0
.end method

.method public unbindSampleQueue(I)V
    .locals 1

    .line 321
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->assertIsPrepared()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 322
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->trackGroupToSampleQueueIndex:[I

    .line 323
    aget p1, v0, p1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    .line 324
    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;->sampleQueuesEnabledStates:[Z

    const/4 v0, 0x0

    .line 325
    aput-boolean v0, p0, p1

    return-void
.end method
