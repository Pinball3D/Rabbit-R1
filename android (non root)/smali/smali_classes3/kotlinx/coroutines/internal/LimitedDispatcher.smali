.class public final Lkotlinx/coroutines/internal/LimitedDispatcher;
.super Lkotlinx/coroutines/CoroutineDispatcher;
.source "LimitedDispatcher.kt"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,134:1\n66#1,8:135\n66#1,8:143\n28#2,4:151\n28#2,4:156\n20#3:155\n20#3:160\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n48#1:135,8\n55#1:143,8\n79#1:151,4\n92#1:156,4\n79#1:155\n92#1:160\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001(B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0019\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0097A\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014J\u001c\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\n\u0010\u0018\u001a\u00060\tj\u0002`\nH\u0016J-\u0010\u0019\u001a\u00020\u00112\n\u0010\u0018\u001a\u00060\tj\u0002`\n2\u0016\u0010\u001a\u001a\u0012\u0012\u0008\u0012\u00060\u001cR\u00020\u0000\u0012\u0004\u0012\u00020\u00110\u001bH\u0082\u0008J\u001c\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\n\u0010\u0018\u001a\u00060\tj\u0002`\nH\u0017J%\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00132\n\u0010\u0018\u001a\u00060\tj\u0002`\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0096\u0001J\u0010\u0010!\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0017J\u0010\u0010\"\u001a\n\u0018\u00010\tj\u0004\u0018\u0001`\nH\u0002J\u001f\u0010#\u001a\u00020\u00112\u0006\u0010 \u001a\u00020\u00132\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00110%H\u0096\u0001J\u0008\u0010&\u001a\u00020\'H\u0002R\u000e\u0010\u0003\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u000c\u0012\u0008\u0012\u00060\tj\u0002`\n0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\t\u0010\u000b\u001a\u00020\u000cX\u0082\u0004R\u0012\u0010\r\u001a\u00060\u000ej\u0002`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006)"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LimitedDispatcher;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/Delay;",
        "dispatcher",
        "parallelism",
        "",
        "(Lkotlinx/coroutines/CoroutineDispatcher;I)V",
        "queue",
        "Lkotlinx/coroutines/internal/LockFreeTaskQueue;",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "runningWorkers",
        "Lkotlinx/atomicfu/AtomicInt;",
        "workerAllocationLock",
        "",
        "Lkotlinx/coroutines/internal/SynchronizedObject;",
        "delay",
        "",
        "time",
        "",
        "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "dispatch",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "block",
        "dispatchInternal",
        "startWorker",
        "Lkotlin/Function1;",
        "Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;",
        "dispatchYield",
        "invokeOnTimeout",
        "Lkotlinx/coroutines/DisposableHandle;",
        "timeMillis",
        "limitedParallelism",
        "obtainTaskOrDeallocateWorker",
        "scheduleResumeAfterDelay",
        "continuation",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "tryAllocateWorker",
        "",
        "Worker",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private final synthetic $$delegate_0:Lkotlinx/coroutines/Delay;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final parallelism:I

.field private final queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/LockFreeTaskQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile runningWorkers:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private final workerAllocationLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/LimitedDispatcher;

    const-string v1, "runningWorkers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineDispatcher;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lkotlinx/coroutines/CoroutineDispatcher;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    iput p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    instance-of p2, p1, Lkotlinx/coroutines/Delay;

    if-eqz p2, :cond_0

    check-cast p1, Lkotlinx/coroutines/Delay;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->getDefaultDelay()Lkotlinx/coroutines/Delay;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    .line 35
    new-instance p1, Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;-><init>(Z)V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 38
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getDispatcher$p(Lkotlinx/coroutines/internal/LimitedDispatcher;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 26
    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$obtainTaskOrDeallocateWorker(Lkotlinx/coroutines/internal/LimitedDispatcher;)Ljava/lang/Runnable;
    .locals 0

    .line 26
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private final dispatchInternal(Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 66
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    sget-object p1, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 67
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    if-lt p1, v0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->tryAllocateWorker()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 71
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 72
    :cond_2
    new-instance v0, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;
    .locals 3

    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 91
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 160
    monitor-enter v0

    :try_start_0
    sget-object v1, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 93
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    iget-object v2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 94
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->getSize()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method private final tryAllocateWorker()Z
    .locals 4

    iget-object v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->workerAllocationLock:Ljava/lang/Object;

    .line 155
    monitor-enter v0

    :try_start_0
    sget-object v1, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 80
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    iget v3, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    .line 81
    :cond_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->ERROR:Lkotlin/DeprecationLevel;
        message = "Deprecated without replacement as an internal method never intended for public use"
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 135
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    sget-object p1, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 136
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    if-ge p1, p2, :cond_1

    .line 139
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->tryAllocateWorker()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 49
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->queue:Lkotlinx/coroutines/internal/LockFreeTaskQueue;

    .line 143
    invoke-virtual {p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueue;->addLast(Ljava/lang/Object;)Z

    sget-object p1, Lkotlinx/coroutines/internal/LimitedDispatcher;->runningWorkers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 144
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    if-ge p1, p2, :cond_1

    .line 147
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->tryAllocateWorker()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 148
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LimitedDispatcher;->obtainTaskOrDeallocateWorker()Ljava/lang/Runnable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance p2, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;

    invoke-direct {p2, p0, p1}, Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;-><init>(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 56
    check-cast p0, Lkotlin/coroutines/CoroutineContext;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p1, p0, p2}, Lkotlinx/coroutines/CoroutineDispatcher;->dispatchYield(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    invoke-interface {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/Delay;->invokeOnTimeout(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method

.method public limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 1

    .line 42
    invoke-static {p1}, Lkotlinx/coroutines/internal/LimitedDispatcherKt;->checkParallelism(I)V

    iget v0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->parallelism:I

    if-lt p1, v0, :cond_0

    .line 43
    check-cast p0, Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/CoroutineDispatcher;->limitedParallelism(I)Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/internal/LimitedDispatcher;->$$delegate_0:Lkotlinx/coroutines/Delay;

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay;->scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method
