.class public final Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheEvictor;


# instance fields
.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Landroidx/media3/datasource/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public static synthetic $r8$lambda$IrJohXX_Igd4qS3HsDKy6poxjfs(Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->compare(Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    .line 33
    new-instance p1, Ljava/util/TreeSet;

    new-instance p2, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    return-void
.end method

.method private static compare(Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)I
    .locals 4

    .line 79
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheSpan;->lastTouchTimestamp:J

    iget-wide v2, p1, Landroidx/media3/datasource/cache/CacheSpan;->lastTouchTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroidx/media3/datasource/cache/CacheSpan;->compareTo(Landroidx/media3/datasource/cache/CacheSpan;)I

    move-result p0

    return p0

    .line 84
    :cond_0
    iget-wide v0, p0, Landroidx/media3/datasource/cache/CacheSpan;->lastTouchTimestamp:J

    iget-wide p0, p1, Landroidx/media3/datasource/cache/CacheSpan;->lastTouchTimestamp:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private evictCache(Landroidx/media3/datasource/cache/Cache;J)V
    .locals 4

    :goto_0
    iget-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 73
    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 74
    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/datasource/cache/CacheSpan;

    invoke-interface {p1, v0}, Landroidx/media3/datasource/cache/Cache;->removeSpan(Landroidx/media3/datasource/cache/CacheSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCacheInitialized()V
    .locals 0

    return-void
.end method

.method public onSpanAdded(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 55
    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 56
    iget-wide v2, p2, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    const-wide/16 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Landroidx/media3/datasource/cache/Cache;J)V

    return-void
.end method

.method public onSpanRemoved(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 2

    iget-object p1, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 62
    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 63
    iget-wide p1, p2, Landroidx/media3/datasource/cache/CacheSpan;->length:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    return-void
.end method

.method public onSpanTouched(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;Landroidx/media3/datasource/cache/CacheSpan;)V
    .locals 0

    .line 68
    invoke-virtual {p0, p1, p2}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->onSpanRemoved(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V

    .line 69
    invoke-virtual {p0, p1, p3}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->onSpanAdded(Landroidx/media3/datasource/cache/Cache;Landroidx/media3/datasource/cache/CacheSpan;)V

    return-void
.end method

.method public onStartFile(Landroidx/media3/datasource/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    const-wide/16 p2, -0x1

    cmp-long p2, p5, p2

    if-eqz p2, :cond_0

    .line 49
    invoke-direct {p0, p1, p5, p6}, Landroidx/media3/datasource/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Landroidx/media3/datasource/cache/Cache;J)V

    :cond_0
    return-void
.end method

.method public requiresCacheSpanTouches()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
