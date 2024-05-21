.class final Lcom/google/common/graph/MapRetrievalCache;
.super Lcom/google/common/graph/MapIteratorCache;
.source "MapRetrievalCache.java"


# annotations
.annotation runtime Lcom/google/common/graph/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/MapIteratorCache<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private volatile transient cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private volatile transient cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/google/common/graph/MapIteratorCache;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/MapRetrievalCache$CacheEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    iput-object p1, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    return-void
.end method

.method private addToCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 94
    new-instance v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    invoke-direct {v0, p1, p2}, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V

    return-void
.end method


# virtual methods
.method clearCache()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/google/common/graph/MapIteratorCache;->clearCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    iput-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    return-void
.end method

.method get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 44
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapRetrievalCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 50
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/graph/MapRetrievalCache;->getWithoutCaching(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method getIfCached(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 62
    invoke-super {p0, p1}, Lcom/google/common/graph/MapIteratorCache;->getIfCached(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry1:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    .line 74
    iget-object p0, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/common/graph/MapRetrievalCache;->cacheEntry2:Lcom/google/common/graph/MapRetrievalCache$CacheEntry;

    if-eqz v0, :cond_2

    .line 77
    iget-object v1, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->key:Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    .line 80
    invoke-direct {p0, v0}, Lcom/google/common/graph/MapRetrievalCache;->addToCache(Lcom/google/common/graph/MapRetrievalCache$CacheEntry;)V

    .line 81
    iget-object p0, v0, Lcom/google/common/graph/MapRetrievalCache$CacheEntry;->value:Ljava/lang/Object;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
