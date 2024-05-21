.class public Landroidx/media3/exoplayer/source/SampleQueue;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Landroidx/media3/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;,
        Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;,
        Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;
    }
.end annotation


# static fields
.field static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "SampleQueue"


# instance fields
.field private absoluteFirstIndex:I

.field private capacity:I

.field private cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

.field private currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

.field private downstreamFormat:Landroidx/media3/common/Format;

.field private final drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

.field private final drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

.field private final extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

.field private flags:[I

.field private isLastSampleQueued:Z

.field private largestDiscardedTimestampUs:J

.field private largestQueuedTimestampUs:J

.field private length:I

.field private loggedUnexpectedNonSyncSample:Z

.field private offsets:[J

.field private pendingSplice:Z

.field private readPosition:I

.field private relativeFirstIndex:I

.field private final sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

.field private sampleOffsetUs:J

.field private final sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/exoplayer/source/SpannedData<",
            "Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private sizes:[I

.field private sourceIds:[J

.field private startTimeUs:J

.field private timesUs:[J

.field private unadjustedUpstreamFormat:Landroidx/media3/common/Format;

.field private upstreamAllSamplesAreSyncSamples:Z

.field private upstreamFormat:Landroidx/media3/common/Format;

.field private upstreamFormatAdjustmentRequired:Z

.field private upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

.field private upstreamFormatRequired:Z

.field private upstreamKeyframeRequired:Z

.field private upstreamSourceId:J


# direct methods
.method protected constructor <init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 168
    new-instance p2, Landroidx/media3/exoplayer/source/SampleDataQueue;

    invoke-direct {p2, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 169
    new-instance p1, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    invoke-direct {p1}, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    const/16 p1, 0x3e8

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    new-array p2, p1, [J

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    new-array p2, p1, [I

    iput-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 177
    new-instance p1, Landroidx/media3/exoplayer/source/SpannedData;

    new-instance p2, Landroidx/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/media3/exoplayer/source/SampleQueue$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/SpannedData;-><init>(Landroidx/media3/common/util/Consumer;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    return-void
.end method

.method private declared-synchronized attemptSplice(J)Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p1, p1, v3

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 874
    :goto_0
    monitor-exit p0

    return v1

    .line 876
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 877
    monitor-exit p0

    return v2

    .line 879
    :cond_2
    :try_start_2
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    .line 880
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSampleMetadata(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 881
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized commitSample(JIJILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    sub-int/2addr v0, v1

    .line 802
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 803
    aget-wide v3, v3, v0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget v0, v5, v0

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v0, v3, p4

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    .line 808
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    .line 810
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 811
    aput-wide p1, v3, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 812
    aput-wide p4, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 813
    aput p6, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 814
    aput p3, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 815
    aput-object p7, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget-wide p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J

    .line 816
    aput-wide p2, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 818
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SpannedData;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 819
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {p1, p2}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz p1, :cond_4

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    .line 822
    invoke-interface {p1, p2, p3}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->preacquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    move-result-object p1

    goto :goto_2

    .line 823
    :cond_4
    sget-object p1, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->EMPTY:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    :goto_2
    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 826
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result p3

    new-instance p4, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    .line 827
    invoke-static {p5}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/media3/common/Format;

    const/4 p6, 0x0

    invoke-direct {p4, p5, p1, p6}, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;-><init>(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;Landroidx/media3/exoplayer/source/SampleQueue$1;)V

    .line 825
    invoke-virtual {p2, p3, p4}, Landroidx/media3/exoplayer/source/SpannedData;->appendSpan(ILjava/lang/Object;)V

    :cond_5
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, p2, :cond_6

    add-int/lit16 p1, p2, 0x3e8

    .line 834
    new-array p3, p1, [J

    .line 835
    new-array p4, p1, [J

    .line 836
    new-array p5, p1, [J

    .line 837
    new-array p6, p1, [I

    .line 838
    new-array p7, p1, [I

    .line 839
    new-array v0, p1, [Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    sub-int/2addr p2, v1

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 841
    invoke-static {v3, v1, p4, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 842
    invoke-static {v1, v3, p5, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 843
    invoke-static {v1, v3, p6, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 844
    invoke-static {v1, v3, p7, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 845
    invoke-static {v1, v3, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 846
    invoke-static {v1, v3, p3, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 848
    invoke-static {v3, v2, p4, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 849
    invoke-static {v3, v2, p5, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 850
    invoke-static {v3, v2, p6, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 851
    invoke-static {v3, v2, p7, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 852
    invoke-static {v3, v2, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    .line 853
    invoke-static {v3, v2, p3, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iput-object p5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iput-object p6, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    iput-object p7, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    iput v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private countUnreadSamplesBefore(J)I
    .locals 4

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/lit8 v1, v0, -0x1

    .line 996
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v1

    :cond_0
    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-le v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 997
    aget-wide v2, v2, v1

    cmp-long v2, v2, p1

    if-ltz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static createWithDrm(Landroidx/media3/exoplayer/upstream/Allocator;Landroid/os/Looper;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    sget-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {p2, p1, v0}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 156
    new-instance p1, Landroidx/media3/exoplayer/source/SampleQueue;

    .line 158
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 159
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object p1
.end method

.method public static createWithDrm(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 1

    .line 138
    new-instance v0, Landroidx/media3/exoplayer/source/SampleQueue;

    .line 140
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionManager;

    .line 141
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method public static createWithoutDrm(Landroidx/media3/exoplayer/upstream/Allocator;)Landroidx/media3/exoplayer/source/SampleQueue;
    .locals 2

    .line 118
    new-instance v0, Landroidx/media3/exoplayer/source/SampleQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Landroidx/media3/exoplayer/source/SampleQueue;-><init>(Landroidx/media3/exoplayer/upstream/Allocator;Landroidx/media3/exoplayer/drm/DrmSessionManager;Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-object v0
.end method

.method private declared-synchronized discardSampleMetadataTo(JZZ)J
    .locals 10

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 759
    aget-wide v3, v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    .line 763
    invoke-direct/range {v4 .. v9}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 765
    monitor-exit p0

    return-wide v1

    .line 767
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 760
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized discardSampleMetadataToEnd()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 779
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 781
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private discardSamples(I)J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 1016
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v1, p1

    iput v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 1027
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/SpannedData;->discardTo(I)V

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez p1, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    :cond_2
    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 1031
    aget-wide v0, v0, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 1033
    aget-wide p0, p1, p0

    return-wide p0
.end method

.method private discardUpstreamSampleMetadata(I)J
    .locals 8

    .line 885
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getWriteIndex()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int/2addr v3, v4

    if-gt v0, v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 886
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget-wide v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    .line 888
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 890
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/SpannedData;->discardFrom(I)V

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eqz p1, :cond_2

    sub-int/2addr p1, v2

    .line 892
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 893
    aget-wide v0, v0, p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    aget p0, p0, p1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0

    :cond_2
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private findSampleBefore(IIJZ)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_4

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 969
    aget-wide v3, v3, p1

    cmp-long v5, v3, p3

    if-gtz v5, :cond_4

    if-eqz p5, :cond_0

    iget-object v5, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 970
    aget v5, v5, p1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    :cond_0
    cmp-long v0, v3, p3

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ne p1, v3, :cond_3

    move p1, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private getLargestTimestamp(I)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 1050
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 1052
    aget-wide v4, v4, v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 1053
    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private getRelativeIndex(I)I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    add-int/2addr v0, p1

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->capacity:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p0

    :goto_0
    return v0
.end method

.method private hasNextSample()Z
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$new$0(Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;)V
    .locals 0

    .line 178
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->drmSessionReference:Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;

    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSessionManager$DrmSessionReference;->release()V

    return-void
.end method

.method private mayReadSample(I)Z
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 947
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 949
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->playClearSamplesWithoutKeys()Z

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

.method private onFormatResult(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 911
    :cond_1
    iget-object v0, v0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    :goto_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    .line 913
    iget-object v2, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-eqz v3, :cond_2

    .line 917
    invoke-interface {v3, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->getCryptoType(Landroidx/media3/common/Format;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Format;->copyWithCryptoType(I)Landroidx/media3/common/Format;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, p1

    .line 918
    :goto_2
    iput-object v3, p2, Landroidx/media3/exoplayer/FormatHolder;->format:Landroidx/media3/common/Format;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 919
    iput-object v3, p2, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 924
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmSessionManager:Landroidx/media3/exoplayer/drm/DrmSessionManager;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 931
    invoke-interface {v1, v2, p1}, Landroidx/media3/exoplayer/drm/DrmSessionManager;->acquireSession(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;Landroidx/media3/common/Format;)Landroidx/media3/exoplayer/drm/DrmSession;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 932
    iput-object p1, p2, Landroidx/media3/exoplayer/FormatHolder;->drmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 935
    invoke-interface {v0, p0}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    :cond_5
    return-void
.end method

.method private declared-synchronized peekSampleMetadata(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;ZZLandroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)I
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 693
    :try_start_0
    iput-boolean v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z

    .line 694
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq p2, p3, :cond_2

    .line 699
    :cond_1
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/Format;

    invoke-direct {p0, p2, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->onFormatResult(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit p0

    return v1

    .line 702
    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 696
    :try_start_1
    invoke-virtual {p2, p1}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    monitor-exit p0

    return v3

    :cond_4
    :try_start_2
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 706
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/media3/exoplayer/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v0, v0, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    if-nez p3, :cond_a

    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    if-eq v0, p3, :cond_5

    goto :goto_1

    :cond_5
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 712
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    .line 713
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_6

    .line 714
    iput-boolean v0, p2, Landroidx/media3/decoder/DecoderInputBuffer;->waitingForKeys:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 715
    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->flags:[I

    .line 718
    aget p3, p3, p1

    invoke-virtual {p2, p3}, Landroidx/media3/decoder/DecoderInputBuffer;->setFlags(I)V

    iget p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    sub-int/2addr v1, v0

    if-ne p3, v1, :cond_8

    if-nez p4, :cond_7

    iget-boolean p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-eqz p3, :cond_8

    :cond_7
    const/high16 p3, 0x20000000

    .line 720
    invoke-virtual {p2, p3}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    :cond_8
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    .line 722
    aget-wide p3, p3, p1

    iput-wide p3, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    .line 723
    iget-wide p3, p2, Landroidx/media3/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long p3, p3, v0

    if-gez p3, :cond_9

    const/high16 p3, -0x80000000

    .line 724
    invoke-virtual {p2, p3}, Landroidx/media3/decoder/DecoderInputBuffer;->addFlag(I)V

    :cond_9
    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sizes:[I

    .line 726
    aget p2, p2, p1

    iput p2, p5, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->size:I

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->offsets:[J

    .line 727
    aget-wide p2, p2, p1

    iput-wide p2, p5, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->offset:J

    iget-object p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->cryptoDatas:[Landroidx/media3/extractor/TrackOutput$CryptoData;

    .line 728
    aget-object p1, p2, p1

    iput-object p1, p5, Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;->cryptoData:Landroidx/media3/extractor/TrackOutput$CryptoData;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 730
    monitor-exit p0

    return v3

    .line 708
    :cond_a
    :goto_1
    :try_start_4
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->onFormatResult(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/FormatHolder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 709
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private releaseDrmSessionReferences()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->drmEventDispatcher:Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    .line 786
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->release(Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;

    :cond_0
    return-void
.end method

.method private declared-synchronized rewind()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 683
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleDataQueue;->rewind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 684
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setUpstreamFormat(Landroidx/media3/common/Format;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    .line 735
    invoke-static {p1, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 739
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 742
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SpannedData;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 743
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object v1, v1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1, p1}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 747
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/SpannedData;->getEndValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    goto :goto_0

    :cond_1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    .line 751
    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iget-object v1, v1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 752
    invoke-static {p1, v1}, Landroidx/media3/common/MimeTypes;->allSamplesAreSyncSamples(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized discardSampleMetadataToRead()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 772
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 774
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSamples(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final discardTo(JZZ)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 537
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSampleMetadataTo(JZZ)J

    move-result-wide p0

    .line 536
    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToEnd()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 547
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSampleMetadataToEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardToRead()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 542
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardSampleMetadataToRead()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public final discardUpstreamFrom(J)V
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestReadTimestampUs()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 279
    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->countUnreadSamplesBefore(J)I

    move-result p1

    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    add-int/2addr p2, p1

    .line 280
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSamples(I)V

    return-void
.end method

.method public final discardUpstreamSamples(I)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 264
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->discardUpstreamSampleMetadata(I)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->discardUpstreamSampleBytes(J)V

    return-void
.end method

.method public final format(Landroidx/media3/common/Format;)V
    .locals 2

    .line 579
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    .line 582
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->setUpstreamFormat(Landroidx/media3/common/Format;)Z

    move-result p1

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 584
    invoke-interface {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Landroidx/media3/common/Format;)V

    :cond_0
    return-void
.end method

.method protected getAdjustedUpstreamFormat(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 4

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 668
    iget-wide v0, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-wide v1, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v1, p0

    .line 672
    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 673
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final getFirstIndex()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    return p0
.end method

.method public final declared-synchronized getFirstTimestampUs()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    .line 371
    aget-wide v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestQueuedTimestampUs()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLargestReadTimestampUs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iget v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 353
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/source/SampleQueue;->getLargestTimestamp(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getReadIndex()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final declared-synchronized getSkipCount(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 499
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 500
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v0, v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    if-eqz p3, :cond_1

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, p2

    .line 504
    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    iget p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 507
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 509
    monitor-exit p0

    return v7

    .line 511
    :cond_2
    monitor-exit p0

    return p1

    .line 501
    :cond_3
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getUpstreamFormat()Landroidx/media3/common/Format;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getWriteIndex()I
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iget p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v0, p0

    return v0
.end method

.method protected final invalidateUpstreamFormatAdjustment()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    return-void
.end method

.method public final declared-synchronized isLastSampleQueued()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReady(Z)Z
    .locals 2

    monitor-enter p0

    .line 388
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 389
    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 393
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->getReadIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/source/SpannedData;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;

    iget-object p1, p1, Landroidx/media3/exoplayer/source/SampleQueue$SharedSampleMetadata;->format:Landroidx/media3/common/Format;

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->downstreamFormat:Landroidx/media3/common/Format;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, v0, :cond_3

    .line 395
    monitor-exit p0

    return v1

    :cond_3
    :try_start_2
    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 397
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/SampleQueue;->mayReadSample(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public maybeThrowError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    if-eqz v0, :cond_1

    .line 300
    invoke-interface {v0}, Landroidx/media3/exoplayer/drm/DrmSession;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->currentDrmSession:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 301
    invoke-interface {p0}, Landroidx/media3/exoplayer/drm/DrmSession;->getError()Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized peekSourceId()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 322
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v0

    .line 323
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sourceIds:[J

    aget-wide v0, v1, v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public preRelease()V
    .locals 0

    .line 288
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->discardToEnd()V

    .line 289
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public read(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;IZ)I
    .locals 9

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iget-object v8, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p4

    .line 425
    invoke-direct/range {v3 .. v8}, Landroidx/media3/exoplayer/source/SampleQueue;->peekSampleMetadata(Landroidx/media3/exoplayer/FormatHolder;Landroidx/media3/decoder/DecoderInputBuffer;ZZLandroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)I

    move-result p1

    const/4 p4, -0x4

    if-ne p1, p4, :cond_4

    .line 431
    invoke-virtual {p2}, Landroidx/media3/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result p4

    if-nez p4, :cond_4

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_1

    move v1, v2

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_3

    if-eqz v1, :cond_2

    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 435
    invoke-virtual {p3, p2, p4}, Landroidx/media3/exoplayer/source/SampleDataQueue;->peekToBuffer(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V

    goto :goto_1

    :cond_2
    iget-object p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    iget-object p4, p0, Landroidx/media3/exoplayer/source/SampleQueue;->extrasHolder:Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;

    .line 437
    invoke-virtual {p3, p2, p4}, Landroidx/media3/exoplayer/source/SampleDataQueue;->readToBuffer(Landroidx/media3/decoder/DecoderInputBuffer;Landroidx/media3/exoplayer/source/SampleQueue$SampleExtrasHolder;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    iget p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p2, v2

    iput p2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    :cond_4
    return p1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    .line 192
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->releaseDrmSessionReferences()V

    return-void
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 210
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SampleDataQueue;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->relativeFirstIndex:I

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestDiscardedTimestampUs:J

    iput-wide v2, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->isLastSampleQueued:Z

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sharedSampleMetadata:Landroidx/media3/exoplayer/source/SpannedData;

    .line 220
    invoke-virtual {v0}, Landroidx/media3/exoplayer/source/SpannedData;->clear()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    iput-boolean v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatRequired:Z

    :cond_0
    return-void
.end method

.method public final sampleData(Landroidx/media3/common/DataReader;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 592
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/source/SampleDataQueue;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    move-result p0

    return p0
.end method

.method public final sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 598
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/SampleDataQueue;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V
    .locals 10

    move-object v0, p0

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatAdjustmentRequired:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleQueue;->unadjustedUpstreamFormat:Landroidx/media3/common/Format;

    .line 609
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/Format;

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/source/SampleQueue;->format(Landroidx/media3/common/Format;)V

    :cond_0
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    iget-boolean v5, v0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    return-void

    :cond_2
    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamKeyframeRequired:Z

    :cond_3
    iget-wide v5, v0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    add-long/2addr v5, p1

    iget-boolean v7, v0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamAllSamplesAreSyncSamples:Z

    if-eqz v7, :cond_6

    iget-wide v7, v0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    return-void

    :cond_4
    if-nez v1, :cond_6

    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    if-nez v1, :cond_5

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "Overriding unexpected non-sync sample for format: "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormat:Landroidx/media3/common/Format;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "SampleQueue"

    invoke-static {v7, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Landroidx/media3/exoplayer/source/SampleQueue;->loggedUnexpectedNonSyncSample:Z

    :cond_5
    or-int/lit8 v1, p3, 0x1

    move v3, v1

    goto :goto_1

    :cond_6
    move v3, p3

    :goto_1
    iget-boolean v1, v0, Landroidx/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    if-eqz v1, :cond_9

    if-eqz v4, :cond_8

    .line 638
    invoke-direct {p0, v5, v6}, Landroidx/media3/exoplayer/source/SampleQueue;->attemptSplice(J)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    iput-boolean v2, v0, Landroidx/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    iget-object v1, v0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleDataQueue:Landroidx/media3/exoplayer/source/SampleDataQueue;

    .line 644
    invoke-virtual {v1}, Landroidx/media3/exoplayer/source/SampleDataQueue;->getTotalBytesWritten()J

    move-result-wide v1

    move v7, p4

    int-to-long v8, v7

    sub-long/2addr v1, v8

    move v4, p5

    int-to-long v8, v4

    sub-long v8, v1, v8

    move-object v0, p0

    move-wide v1, v5

    move-wide v4, v8

    move v6, p4

    move-object/from16 v7, p6

    .line 645
    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/source/SampleQueue;->commitSample(JIJILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public final declared-synchronized seekTo(I)Z
    .locals 3

    monitor-enter p0

    .line 454
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->rewind()V

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->absoluteFirstIndex:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    sub-int/2addr p1, v0

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 456
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized seekTo(JZ)Z
    .locals 8

    monitor-enter p0

    .line 472
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->rewind()V

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    .line 473
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SampleQueue;->getRelativeIndex(I)I

    move-result v2

    .line 474
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->hasNextSample()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->timesUs:[J

    aget-wide v0, v0, v2

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->largestQueuedTimestampUs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 480
    invoke-direct/range {v1 .. v6}, Landroidx/media3/exoplayer/source/SampleQueue;->findSampleBefore(IIJZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 482
    monitor-exit p0

    return v7

    :cond_1
    :try_start_1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    iget p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr p1, p3

    iput p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 477
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSampleOffsetUs(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->sampleOffsetUs:J

    .line 561
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/SampleQueue;->invalidateUpstreamFormatAdjustment()V

    :cond_0
    return-void
.end method

.method public final setStartTimeUs(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->startTimeUs:J

    return-void
.end method

.method public final setUpstreamFormatChangeListener(Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamFormatChangeListener:Landroidx/media3/exoplayer/source/SampleQueue$UpstreamFormatChangedListener;

    return-void
.end method

.method public final declared-synchronized skip(I)V
    .locals 2

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iget v1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->length:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->readPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final sourceId(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/media3/exoplayer/source/SampleQueue;->upstreamSourceId:J

    return-void
.end method

.method public final splice()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/SampleQueue;->pendingSplice:Z

    return-void
.end method
