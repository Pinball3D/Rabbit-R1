.class public final Lcom/google/common/util/concurrent/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Monitor$Guard;
    }
.end annotation


# instance fields
.field private activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final fair:Z

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-boolean p1, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    .line 358
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static synthetic access$000(Lcom/google/common/util/concurrent/Monitor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1068
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1070
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1073
    :cond_1
    :try_start_0
    iget-object p2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 1074
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 1076
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1077
    throw p2
.end method

.method private awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    move v1, v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    if-nez v1, :cond_1

    .line 1117
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_1
    return v3

    :cond_2
    if-eqz v1, :cond_4

    if-eqz p4, :cond_3

    .line 1107
    :try_start_0
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1109
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    move v1, v3

    .line 1112
    :cond_4
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2, p2, p3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p2

    .line 1113
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_5

    .line 1117
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    :cond_5
    return v0

    :catchall_0
    move-exception p2

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1119
    :cond_6
    throw p2
.end method

.method private awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1083
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V

    .line 1085
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1088
    :cond_1
    :try_start_0
    iget-object p2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    .line 1089
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 1091
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V

    .line 1092
    throw p2
.end method

.method private beginWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2

    .line 1031
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1034
    iput-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    :cond_0
    return-void
.end method

.method private endWaitingFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 4

    .line 1042
    iget v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    if-ne v0, p1, :cond_1

    if-nez v2, :cond_0

    .line 1048
    iget-object p1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object p1, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_1

    .line 1050
    :cond_0
    iget-object p0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    iput-object p0, v2, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    .line 1052
    :goto_1
    iput-object v1, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_2

    .line 1045
    :cond_1
    iget-object v2, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method private static initNanoTime(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    return-wide v0

    .line 934
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p0

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/16 p0, 0x1

    :cond_1
    return-wide p0
.end method

.method private isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 0

    .line 1013
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p1

    .line 1015
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalAllWaiters()V

    .line 1016
    throw p1
.end method

.method private static remainingNanos(JJ)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    sub-long v0, p2, v0

    :goto_0
    return-wide v0
.end method

.method private signalAllWaiters()V
    .locals 1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    :goto_0
    if-eqz p0, :cond_0

    .line 1024
    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1023
    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private signalNextWaiter()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->activeGuards:Lcom/google/common/util/concurrent/Monitor$Guard;

    :goto_0
    if-eqz v0, :cond_1

    .line 981
    invoke-direct {p0, v0}, Lcom/google/common/util/concurrent/Monitor;->isSatisfied(Lcom/google/common/util/concurrent/Monitor$Guard;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    iget-object p0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_1

    .line 980
    :cond_0
    iget-object v0, v0, Lcom/google/common/util/concurrent/Monitor$Guard;->next:Lcom/google/common/util/concurrent/Monitor$Guard;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static toSafeNanos(JLjava/util/concurrent/TimeUnit;)J
    .locals 6

    .line 922
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const-wide v4, 0x5ffffffffffffffdL    # 2.6815615859885185E154

    .line 923
    invoke-static/range {v0 .. v5}, Lcom/google/common/primitives/Longs;->constrainToRange(JJJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public enter()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 363
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public enter(JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    .line 373
    invoke-static {p1, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    iget-boolean p0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 375
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    .line 378
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    .line 380
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-wide v3, p1

    .line 383
    :goto_0
    :try_start_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 391
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return p1

    .line 386
    :catch_0
    :try_start_2
    invoke-static {v1, v2, p1, p2}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p0, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move v0, p0

    :goto_1
    if-eqz v0, :cond_2

    .line 391
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 393
    :cond_2
    throw p1
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1

    .line 609
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 613
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 617
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 620
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 622
    throw p1

    .line 610
    :cond_1
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterIf(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    .line 633
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_2

    .line 636
    invoke-virtual {p0, p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->enter(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 642
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 645
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 647
    throw p1

    .line 634
    :cond_2
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 658
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 662
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 666
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 669
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 671
    throw p1

    .line 659
    :cond_1
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterIfInterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 683
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_2

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 687
    invoke-virtual {p0, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 693
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 696
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 698
    throw p1

    .line 684
    :cond_2
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterInterruptibly()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 402
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    return-void
.end method

.method public enterInterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 413
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 433
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 437
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 438
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 442
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 448
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 450
    throw p1

    .line 434
    :cond_1
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterWhen(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 463
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 464
    iget-object v2, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v2, p0, :cond_8

    iget-object v2, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 468
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    iget-boolean v4, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v4, :cond_1

    .line 475
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-nez v4, :cond_0

    .line 478
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide v8, v6

    goto :goto_0

    .line 476
    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 482
    :cond_1
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v8

    .line 483
    invoke-virtual {v2, p2, p3, p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result p2

    if-nez p2, :cond_2

    return v5

    .line 492
    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p2

    if-nez p2, :cond_4

    cmp-long p2, v8, v6

    if-nez p2, :cond_3

    goto :goto_1

    .line 495
    :cond_3
    invoke-static {v8, v9, v0, v1}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v0

    .line 493
    :goto_1
    invoke-direct {p0, p1, v0, v1, v3}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    if-nez v5, :cond_6

    .line 507
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_6
    return v5

    :catchall_0
    move-exception p1

    if-nez v3, :cond_7

    .line 504
    :try_start_1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 507
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 508
    throw p0

    .line 507
    :cond_7
    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 510
    throw p1

    .line 465
    :cond_8
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 2

    .line 515
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 519
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v1

    .line 520
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 524
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0, p1, v1}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 530
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/Monitor;->leave()V

    .line 532
    throw p1

    .line 516
    :cond_1
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public enterWhenUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 11

    .line 543
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    .line 544
    iget-object p4, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne p4, p0, :cond_9

    iget-object p4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 549
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    .line 550
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    :try_start_0
    iget-boolean v2, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_1

    .line 552
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v4

    goto :goto_2

    .line 553
    :cond_1
    :goto_0
    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-wide v9, p2

    .line 556
    :goto_1
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v9, v10, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_6

    .line 572
    :goto_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    cmp-long v2, v7, v4

    if-nez v2, :cond_3

    .line 577
    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v7

    move-wide v9, p2

    goto :goto_3

    .line 580
    :cond_3
    invoke-static {v7, v8, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v9

    .line 582
    :goto_3
    invoke-direct {p0, p1, v9, v10, v0}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    if-nez v6, :cond_4

    .line 592
    :try_start_3
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    if-eqz v1, :cond_5

    .line 597
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    return v6

    :catchall_0
    move-exception p0

    .line 592
    :try_start_4
    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 594
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move v0, v3

    move v1, v6

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 597
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    return v3

    .line 563
    :catch_1
    :try_start_5
    invoke-static {v7, v8, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v1, v6

    goto :goto_1

    :catchall_1
    move-exception p0

    move v1, v6

    goto :goto_5

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v1, :cond_8

    .line 597
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 599
    :cond_8
    throw p0

    .line 545
    :cond_9
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public getOccupiedDepth()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 855
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result p0

    return p0
.end method

.method public getQueueLength()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 865
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result p0

    return p0
.end method

.method public getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I
    .locals 1

    .line 905
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 908
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 910
    :try_start_0
    iget p1, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->waiterCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 912
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 913
    throw p1

    .line 906
    :cond_0
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public hasQueuedThread(Ljava/lang/Thread;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 885
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThread(Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method

.method public hasQueuedThreads()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 875
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->hasQueuedThreads()Z

    move-result p0

    return p0
.end method

.method public hasWaiters(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 0

    .line 895
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/Monitor;->getWaitQueueLength(Lcom/google/common/util/concurrent/Monitor$Guard;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFair()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/common/util/concurrent/Monitor;->fair:Z

    return p0
.end method

.method public isOccupied()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 839
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method public isOccupiedByCurrentThread()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 847
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p0

    return p0
.end method

.method public leave()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 821
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/google/common/util/concurrent/Monitor;->signalNextWaiter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 826
    throw p0
.end method

.method public tryEnter()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 424
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result p0

    return p0
.end method

.method public tryEnterIf(Lcom/google/common/util/concurrent/Monitor$Guard;)Z
    .locals 1

    .line 710
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_2

    iget-object p0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 714
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 720
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 723
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_1
    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 725
    throw p1

    .line 711
    :cond_2
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 735
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 739
    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Monitor;->await(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    :cond_0
    return-void

    .line 736
    :cond_1
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public waitFor(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 752
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    .line 753
    iget-object p4, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne p4, p0, :cond_2

    iget-object p4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 756
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    .line 759
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p4

    if-nez p4, :cond_1

    .line 762
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result p0

    return p0

    .line 760
    :cond_1
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0

    .line 754
    :cond_2
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;)V
    .locals 1

    .line 770
    iget-object v0, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 774
    invoke-direct {p0, p1, v0}, Lcom/google/common/util/concurrent/Monitor;->awaitUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;Z)V

    :cond_0
    return-void

    .line 771
    :cond_1
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method

.method public waitForUninterruptibly(Lcom/google/common/util/concurrent/Monitor$Guard;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6

    .line 786
    invoke-static {p2, p3, p4}, Lcom/google/common/util/concurrent/Monitor;->toSafeNanos(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    .line 787
    iget-object p4, p1, Lcom/google/common/util/concurrent/Monitor$Guard;->monitor:Lcom/google/common/util/concurrent/Monitor;

    if-ne p4, p0, :cond_4

    iget-object p4, p0, Lcom/google/common/util/concurrent/Monitor;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result p4

    if-eqz p4, :cond_4

    .line 790
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    .line 794
    :cond_0
    invoke-static {p2, p3}, Lcom/google/common/util/concurrent/Monitor;->initNanoTime(J)J

    move-result-wide v1

    .line 795
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p4

    move-wide v3, p2

    move v5, v0

    .line 799
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/google/common/util/concurrent/Monitor;->awaitNanos(Lcom/google/common/util/concurrent/Monitor$Guard;JZ)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    .line 811
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    move v0, p4

    goto :goto_1

    .line 802
    :catch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/common/util/concurrent/Monitor$Guard;->isSatisfied()Z

    move-result p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p4, :cond_2

    .line 811
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return v0

    .line 806
    :cond_2
    :try_start_2
    invoke-static {v1, v2, p2, p3}, Lcom/google/common/util/concurrent/Monitor;->remainingNanos(JJ)J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v5, 0x0

    move p4, v0

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_3

    .line 811
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 813
    :cond_3
    throw p0

    .line 788
    :cond_4
    new-instance p0, Ljava/lang/IllegalMonitorStateException;

    invoke-direct {p0}, Ljava/lang/IllegalMonitorStateException;-><init>()V

    throw p0
.end method
