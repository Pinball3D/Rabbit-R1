.class public final Landroidx/media3/common/util/CopyOnWriteMultiset;
.super Ljava/lang/Object;
.source "CopyOnWriteMultiset.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final elementCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation
.end field

.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 63
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 73
    monitor-enter v0

    .line 74
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 75
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    iget-object v1, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 78
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 80
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v2, v1

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 145
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 146
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 123
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    .line 124
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 138
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->lock:Ljava/lang/Object;

    .line 94
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 95
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0

    return-void

    .line 100
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 102
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elements:Ljava/util/List;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 105
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 108
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementSet:Ljava/util/Set;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/common/util/CopyOnWriteMultiset;->elementCounts:Ljava/util/Map;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
