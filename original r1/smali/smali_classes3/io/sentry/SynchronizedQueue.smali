.class final Lio/sentry/SynchronizedQueue;
.super Lio/sentry/SynchronizedCollection;
.source "SynchronizedQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lio/sentry/SynchronizedCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Lio/sentry/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Queue;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Lio/sentry/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method static synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Queue<",
            "TE;>;)",
            "Lio/sentry/SynchronizedQueue<",
            "TE;>;"
        }
    .end annotation

    .line 46
    new-instance v0, Lio/sentry/SynchronizedQueue;

    invoke-direct {v0, p0}, Lio/sentry/SynchronizedQueue;-><init>(Ljava/util/Queue;)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    return-object p0
.end method

.method protected decorated()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 79
    invoke-super {p0}, Lio/sentry/SynchronizedCollection;->decorated()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/Queue;

    return-object p0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 95
    :cond_0
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public hashCode()I
    .locals 1

    .line 104
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 106
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 134
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 139
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 141
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lio/sentry/SynchronizedQueue;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/SynchronizedQueue;->decorated()Ljava/util/Queue;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
