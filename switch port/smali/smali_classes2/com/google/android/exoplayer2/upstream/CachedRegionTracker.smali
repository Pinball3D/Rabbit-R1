.class public final Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;
.super Ljava/lang/Object;
.source "CachedRegionTracker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;
    }
.end annotation


# static fields
.field public static final CACHED_TO_END:I = -0x2

.field public static final NOT_CACHED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CachedRegionTracker"


# instance fields
.field private final cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

.field private final cacheKey:Ljava/lang/String;

.field private final chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

.field private final lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

.field private final regions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/cache/Cache;Ljava/lang/String;Lcom/google/android/exoplayer2/extractor/ChunkIndex;)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 51
    new-instance p3, Ljava/util/TreeSet;

    invoke-direct {p3}, Ljava/util/TreeSet;-><init>()V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 52
    new-instance p3, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1, v0, v1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-interface {p1, p2, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->addListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)Ljava/util/NavigableSet;

    move-result-object p1

    .line 58
    invoke-interface {p1}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;

    .line 61
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 7

    .line 140
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 141
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 143
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z

    move-result v2

    .line 144
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    .line 149
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 150
    iget v0, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_0

    .line 153
    :cond_0
    iget-wide v2, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 154
    iget p1, v1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 157
    invoke-virtual {p0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-eqz v2, :cond_3

    .line 160
    iget-wide v0, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iput-wide v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    .line 161
    iget v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 162
    iget v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    add-int/lit8 v2, v0, 0x1

    aget-wide v3, v1, v2

    iget-wide v5, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v1, v3, v5

    if-gtz v1, :cond_2

    move v0, v2

    goto :goto_1

    .line 166
    :cond_2
    iput v0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 169
    iget-object p1, p1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_4

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x2

    .line 170
    :cond_4
    iput p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 171
    invoke-virtual {p0, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method private regionsConnect(Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 176
    iget-wide p0, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized getRegionEndTimeMs(J)I
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 81
    iput-wide p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->lookupRegion:Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 83
    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long p1, p1, v2

    if-gtz p1, :cond_2

    iget p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    iget p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 89
    iget p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->length:I

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    iget-wide v1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v3, p2, p1

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget p2, p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v5, p2

    add-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 91
    monitor-exit p0

    const/4 p0, -0x2

    return p0

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 93
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->durationsUs:[J

    aget-wide v1, p2, p1

    iget-wide v3, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    aget-wide v5, p2, p1

    sub-long/2addr v3, v5

    mul-long/2addr v1, v3

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->sizes:[I

    aget p2, p2, p1

    int-to-long v3, p2

    div-long/2addr v1, v3

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 96
    iget-object p2, p2, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->timesUs:[J

    aget-wide p1, p2, p1

    add-long/2addr p1, v1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-int p1, p1

    monitor-exit p0

    return p1

    .line 86
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanAdded(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    monitor-enter p0

    .line 101
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->mergeSpan(Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSpanRemoved(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 6

    monitor-enter p0

    .line 106
    :try_start_0
    new-instance p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v2, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->position:J

    iget-wide v4, p2, Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v2, v4

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 109
    invoke-virtual {p2, p1}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    if-nez p2, :cond_0

    const-string p1, "CachedRegionTracker"

    const-string p2, "Removed a span we were not aware of"

    .line 111
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 116
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 119
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 120
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v1, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    iget-wide v3, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->startOffset:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->chunkIndex:Lcom/google/android/exoplayer2/extractor/ChunkIndex;

    .line 122
    iget-object v1, v1, Lcom/google/android/exoplayer2/extractor/ChunkIndex;->offsets:[J

    iget-wide v2, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x2

    .line 123
    :cond_1
    iput v1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 124
    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    iget-wide v0, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    iget-wide v2, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 128
    new-instance v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;

    iget-wide v1, p1, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iget-wide v3, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffset:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;-><init>(JJ)V

    .line 129
    iget p1, p2, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iput p1, v0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker$Region;->endOffsetIndex:I

    iget-object p1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->regions:Ljava/util/TreeSet;

    .line 130
    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onSpanTouched(Lcom/google/android/exoplayer2/upstream/cache/Cache;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;Lcom/google/android/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cache:Lcom/google/android/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/CachedRegionTracker;->cacheKey:Ljava/lang/String;

    .line 67
    invoke-interface {v0, v1, p0}, Lcom/google/android/exoplayer2/upstream/cache/Cache;->removeListener(Ljava/lang/String;Lcom/google/android/exoplayer2/upstream/cache/Cache$Listener;)V

    return-void
.end method
