.class public final Landroidx/lifecycle/DispatchQueue;
.super Ljava/lang/Object;
.source "DispatchQueue.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u0004H\u0007J\u0018\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\tH\u0007J\u0008\u0010\u0010\u001a\u00020\u000cH\u0007J\u0010\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\tH\u0003J\u0008\u0010\u0012\u001a\u00020\u000cH\u0007J\u0008\u0010\u0013\u001a\u00020\u000cH\u0007J\u0008\u0010\u0014\u001a\u00020\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/lifecycle/DispatchQueue;",
        "",
        "()V",
        "finished",
        "",
        "isDraining",
        "paused",
        "queue",
        "Ljava/util/Queue;",
        "Ljava/lang/Runnable;",
        "canRun",
        "dispatchAndEnqueue",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "runnable",
        "drainQueue",
        "enqueue",
        "finish",
        "pause",
        "resume",
        "lifecycle-common"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private finished:Z

.field private isDraining:Z

.field private paused:Z

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1ME-FmJywCV2uxhp8ajM5a9C_oI(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DispatchQueue;->dispatchAndEnqueue$lambda$2$lambda$1(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    .line 37
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    return-void
.end method

.method private static final dispatchAndEnqueue$lambda$2$lambda$1(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1}, Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final enqueue(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    .line 108
    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cannot enqueue any more runnables"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final canRun()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final dispatchAndEnqueue(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "runnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p2}, Landroidx/lifecycle/DispatchQueue;->enqueue(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 99
    :cond_1
    :goto_0
    new-instance v1, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Landroidx/lifecycle/DispatchQueue$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/DispatchQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/MainCoroutineDispatcher;->dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final drainQueue()V
    .locals 3

    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    .line 70
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 71
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->canRun()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/lifecycle/DispatchQueue;->queue:Ljava/util/Queue;

    .line 74
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->isDraining:Z

    .line 77
    throw v1
.end method

.method public final finish()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    .line 59
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    return-void
.end method

.method public final resume()V
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->finished:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/DispatchQueue;->paused:Z

    .line 53
    invoke-virtual {p0}, Landroidx/lifecycle/DispatchQueue;->drainQueue()V

    return-void

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot resume a finished dispatcher"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
