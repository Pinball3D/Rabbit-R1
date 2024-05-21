.class public final Landroidx/room/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransactionExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransactionExecutor.kt\nandroidx/room/TransactionExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,54:1\n1#2:55\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0005H\u0016J\u0006\u0010\r\u001a\u00020\u000bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/room/TransactionExecutor;",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "(Ljava/util/concurrent/Executor;)V",
        "active",
        "Ljava/lang/Runnable;",
        "syncLock",
        "",
        "tasks",
        "Ljava/util/ArrayDeque;",
        "execute",
        "",
        "command",
        "scheduleNext",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private active:Ljava/lang/Runnable;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final syncLock:Ljava/lang/Object;

.field private final tasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$AympDHYBb78s7_N_9gRsXF0sHiw(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/TransactionExecutor;->execute$lambda$1$lambda$0(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 29
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/util/ArrayDeque;

    .line 31
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    return-void
.end method

.method private static final execute$lambda$1$lambda$0(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V
    .locals 1

    const-string v0, "$command"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    throw p0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/util/ArrayDeque;

    .line 34
    new-instance v2, Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Landroidx/room/TransactionExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Landroidx/room/TransactionExecutor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Landroidx/room/TransactionExecutor;->scheduleNext()V

    .line 44
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final scheduleNext()V
    .locals 3

    iget-object v0, p0, Landroidx/room/TransactionExecutor;->syncLock:Ljava/lang/Object;

    .line 48
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/TransactionExecutor;->tasks:Ljava/util/ArrayDeque;

    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Runnable;

    iput-object v2, p0, Landroidx/room/TransactionExecutor;->active:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/room/TransactionExecutor;->executor:Ljava/util/concurrent/Executor;

    .line 50
    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
