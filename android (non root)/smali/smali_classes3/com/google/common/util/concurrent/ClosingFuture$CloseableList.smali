.class final Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;
.super Ljava/util/IdentityHashMap;
.source "ClosingFuture.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CloseableList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "Ljava/io/Closeable;",
        "Ljava/util/concurrent/Executor;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# instance fields
.field private volatile closed:Z

.field private final closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

.field private volatile whenClosed:Ljava/util/concurrent/CountDownLatch;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2186
    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2188
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V
    .locals 0

    .line 2186
    invoke-direct {p0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
    .locals 0

    .line 2186
    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    return-object p0
.end method


# virtual methods
.method add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1    # Ljava/io/Closeable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 2241
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 2245
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-nez v0, :cond_1

    .line 2247
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2248
    monitor-exit p0

    return-void

    .line 2250
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/ClosingFuture;->access$3300(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    .line 2250
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method applyAsyncClosingFunction(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/FluentFuture;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
            "TV;TU;>;TV;)",
            "Lcom/google/common/util/concurrent/FluentFuture<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2210
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>()V

    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    .line 2212
    invoke-interface {p1, v1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object p1

    .line 2213
    invoke-static {p1, v0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    .line 2214
    invoke-static {p1}, Lcom/google/common/util/concurrent/ClosingFuture;->access$000(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    .line 2217
    throw p1
.end method

.method applyClosingFunction(Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction<",
            "-TV;TU;>;TV;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2197
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>()V

    :try_start_0
    iget-object v1, v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closer:Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    .line 2199
    invoke-interface {p1, v1, p2}, Lcom/google/common/util/concurrent/ClosingFuture$ClosingFunction;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    .line 2202
    throw p1
.end method

.method public close()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 2225
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-eqz v0, :cond_1

    .line 2227
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    .line 2230
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v2, v1}, Lcom/google/common/util/concurrent/ClosingFuture;->access$3300(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 2234
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->clear()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    .line 2236
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 2230
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method whenClosedCountDown()Ljava/util/concurrent/CountDownLatch;
    .locals 3

    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2259
    new-instance p0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-object p0

    .line 2261
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->closed:Z

    if-eqz v0, :cond_1

    .line 2263
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v1, v2

    .line 2265
    :cond_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 2266
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->whenClosed:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2267
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
