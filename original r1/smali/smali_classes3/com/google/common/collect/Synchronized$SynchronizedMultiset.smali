.class Lcom/google/common/collect/Synchronized$SynchronizedMultiset;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/Multiset;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMultiset"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedCollection<",
        "TE;>;",
        "Lcom/google/common/collect/Multiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient elementSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multiset;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 446
    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/Synchronized$1;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 465
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 456
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 458
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method delegate()Lcom/google/common/collect/Multiset;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation

    .line 451
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->delegate()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/Multiset;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 440
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 440
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    return-object p0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->elementSet:Ljava/util/Set;

    .line 495
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 496
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->access$300(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->entrySet:Ljava/util/Set;

    .line 505
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 506
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

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multiset;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 516
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/common/collect/Multiset;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 523
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 470
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 472
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 478
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 479
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCount(Ljava/lang/Object;II)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;II)Z"
        }
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMultiset;->delegate()Lcom/google/common/collect/Multiset;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
