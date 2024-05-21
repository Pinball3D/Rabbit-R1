.class final Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;
.super Ljava/lang/Object;
.source "AbstractScheduledService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SupplantableFuture"
.end annotation


# instance fields
.field private currentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->currentFuture:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$800(Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;)Ljava/util/concurrent/Future;
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->currentFuture:Ljava/util/concurrent/Future;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0

    .line 616
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->currentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 640
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->currentFuture:Ljava/util/concurrent/Future;

    .line 642
    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 644
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 645
    throw p1
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 650
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->currentFuture:Ljava/util/concurrent/Future;

    .line 652
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 654
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$CustomScheduler$SupplantableFuture;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 655
    throw v0
.end method
