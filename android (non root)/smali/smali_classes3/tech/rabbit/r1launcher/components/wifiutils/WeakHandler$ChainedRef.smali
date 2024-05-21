.class Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;

.field next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

.field prev:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

.field final runnable:Ljava/lang/Runnable;

.field final wrapper:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 1

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 465
    new-instance p1, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p1, v0, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->wrapper:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    return-void
.end method


# virtual methods
.method public insertAfter(Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 486
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 489
    iput-object p1, v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->prev:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    .line 492
    :cond_0
    iput-object v0, p1, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    .line 494
    iput-object p0, p1, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->prev:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 496
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 497
    throw p1
.end method

.method public remove()Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 469
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->prev:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    .line 472
    iput-object v1, v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    :cond_0
    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    if-eqz v1, :cond_1

    .line 475
    iput-object v0, v1, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->prev:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->prev:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 480
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->wrapper:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    return-object p0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 481
    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 502
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    :goto_0
    if-eqz v0, :cond_1

    .line 506
    iget-object v1, v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 507
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->remove()Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 512
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    .line 509
    :cond_0
    :try_start_1
    iget-object v0, v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->next:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 512
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 513
    throw p1
.end method
