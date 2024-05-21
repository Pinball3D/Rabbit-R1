.class final Lcom/google/common/collect/Synchronized$SynchronizedDeque;
.super Lcom/google/common/collect/Synchronized$SynchronizedQueue;
.source "Synchronized.java"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedDeque"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedQueue<",
        "TE;>;",
        "Ljava/util/Deque<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Deque;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1780
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;-><init>(Ljava/util/Queue;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1790
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1791
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 1792
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1797
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 1799
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method bridge synthetic delegate()Ljava/lang/Object;
    .locals 0

    .line 1776
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/Collection;
    .locals 0

    .line 1776
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    return-object p0
.end method

.method delegate()Ljava/util/Deque;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation

    .line 1785
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedQueue;->delegate()Ljava/util/Queue;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/Queue;
    .locals 0

    .line 1776
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    return-object p0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1906
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1907
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1908
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1848
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1849
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1850
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1855
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1856
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1857
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1804
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1805
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1806
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1811
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1813
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1863
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1864
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1865
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1871
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1872
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1873
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1833
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1834
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1835
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1841
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1842
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1843
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1899
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1900
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1901
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1892
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1893
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 1894
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1818
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1819
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1820
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1878
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1879
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1880
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1825
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1826
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1827
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1885
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1886
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedDeque;->delegate()Ljava/util/Deque;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1887
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
