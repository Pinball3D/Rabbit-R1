.class final Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;
.super Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;
.source "AbstractFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SynchronizedHelper"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1487
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/AbstractFuture$AtomicHelper;-><init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture$1;)V
    .locals 0

    .line 1487
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$SynchronizedHelper;-><init>()V

    return-void
.end method


# virtual methods
.method casListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Z
    .locals 0
    .param p2    # Lcom/google/common/util/concurrent/AbstractFuture$Listener;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")Z"
        }
    .end annotation

    .line 1512
    monitor-enter p1

    .line 1513
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object p0

    if-ne p0, p2, :cond_0

    .line 1514
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1515
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    .line 1517
    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1518
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method casValue(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1547
    monitor-enter p1

    .line 1548
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$300(Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    .line 1549
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$302(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1550
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    .line 1552
    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1553
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method casWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Z
    .locals 0
    .param p2    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")Z"
        }
    .end annotation

    .line 1501
    monitor-enter p1

    .line 1502
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    move-result-object p0

    if-ne p0, p2, :cond_0

    .line 1503
    invoke-static {p1, p3}, Lcom/google/common/util/concurrent/AbstractFuture;->access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1504
    monitor-exit p1

    const/4 p0, 0x1

    return p0

    .line 1506
    :cond_0
    monitor-exit p1

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 1507
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method gasListeners(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;",
            ")",
            "Lcom/google/common/util/concurrent/AbstractFuture$Listener;"
        }
    .end annotation

    .line 1524
    monitor-enter p1

    .line 1525
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$700(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    move-result-object p0

    if-eq p0, p2, :cond_0

    .line 1527
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->access$702(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Listener;)Lcom/google/common/util/concurrent/AbstractFuture$Listener;

    .line 1529
    :cond_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    .line 1530
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method gasWaiters(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;",
            ")",
            "Lcom/google/common/util/concurrent/AbstractFuture$Waiter;"
        }
    .end annotation

    .line 1536
    monitor-enter p1

    .line 1537
    :try_start_0
    invoke-static {p1}, Lcom/google/common/util/concurrent/AbstractFuture;->access$800(Lcom/google/common/util/concurrent/AbstractFuture;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    move-result-object p0

    if-eq p0, p2, :cond_0

    .line 1539
    invoke-static {p1, p2}, Lcom/google/common/util/concurrent/AbstractFuture;->access$802(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    .line 1541
    :cond_0
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception p0

    .line 1542
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method putNext(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Lcom/google/common/util/concurrent/AbstractFuture$Waiter;)V
    .locals 0
    .param p2    # Lcom/google/common/util/concurrent/AbstractFuture$Waiter;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1495
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->next:Lcom/google/common/util/concurrent/AbstractFuture$Waiter;

    return-void
.end method

.method putThread(Lcom/google/common/util/concurrent/AbstractFuture$Waiter;Ljava/lang/Thread;)V
    .locals 0

    .line 1490
    iput-object p2, p1, Lcom/google/common/util/concurrent/AbstractFuture$Waiter;->thread:Ljava/lang/Thread;

    return-void
.end method
