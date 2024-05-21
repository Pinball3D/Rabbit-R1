.class Lcom/google/common/collect/Synchronized$SynchronizedMultimap;
.super Lcom/google/common/collect/Synchronized$SynchronizedObject;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedObject;",
        "Lcom/google/common/collect/Multimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient asMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient keys:Lcom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimap;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedObject;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 680
    new-instance v1, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;

    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/Synchronized$SynchronizedAsMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->asMap:Ljava/util/Map;

    .line 682
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clear()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->clear()V

    .line 643
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 585
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 587
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 571
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 572
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 573
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 578
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 580
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method delegate()Lcom/google/common/collect/Multimap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 548
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedObject;->delegate()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multimap;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 537
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    return-object p0
.end method

.method public entries()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 668
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->entries:Ljava/util/Collection;

    .line 672
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 673
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 703
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 594
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 710
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 566
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 650
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keySet:Ljava/util/Set;

    .line 652
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 653
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public keys()Lcom/google/common/collect/Multiset;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TK;>;"
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    if-nez v1, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->keys()Lcom/google/common/collect/Multiset;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->multiset(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)Lcom/google/common/collect/Multiset;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->keys:Lcom/google/common/collect/Multiset;

    .line 692
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 693
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 599
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 600
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 601
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putAll(Lcom/google/common/collect/Multimap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multimap<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->putAll(Lcom/google/common/collect/Multimap;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 615
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->putAll(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 608
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 627
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 628
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 629
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 620
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 621
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 622
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public size()I
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multimap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 559
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->delegate()Lcom/google/common/collect/Multimap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultimap;->valuesCollection:Ljava/util/Collection;

    .line 662
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
