.class public final Landroidx/room/RoomTrackingLiveData;
.super Landroidx/lifecycle/LiveData;
.source "RoomTrackingLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B;\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u0012\u000e\u0010\u000b\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\r0\u000c\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010+\u001a\u00020,H\u0014J\u0008\u0010-\u001a\u00020,H\u0014R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00000\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u0019\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0014R\u0011\u0010\u001b\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$8F\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0011\u0010\'\u001a\u00020\u001c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u001eR\u0011\u0010)\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008*\u0010\u0014\u00a8\u0006."
    }
    d2 = {
        "Landroidx/room/RoomTrackingLiveData;",
        "T",
        "Landroidx/lifecycle/LiveData;",
        "database",
        "Landroidx/room/RoomDatabase;",
        "container",
        "Landroidx/room/InvalidationLiveDataContainer;",
        "inTransaction",
        "",
        "computeFunction",
        "Ljava/util/concurrent/Callable;",
        "tableNames",
        "",
        "",
        "(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V",
        "getComputeFunction",
        "()Ljava/util/concurrent/Callable;",
        "computing",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getComputing",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getDatabase",
        "()Landroidx/room/RoomDatabase;",
        "getInTransaction",
        "()Z",
        "invalid",
        "getInvalid",
        "invalidationRunnable",
        "Ljava/lang/Runnable;",
        "getInvalidationRunnable",
        "()Ljava/lang/Runnable;",
        "observer",
        "Landroidx/room/InvalidationTracker$Observer;",
        "getObserver",
        "()Landroidx/room/InvalidationTracker$Observer;",
        "queryExecutor",
        "Ljava/util/concurrent/Executor;",
        "getQueryExecutor",
        "()Ljava/util/concurrent/Executor;",
        "refreshRunnable",
        "getRefreshRunnable",
        "registeredObserver",
        "getRegisteredObserver",
        "onActive",
        "",
        "onInactive",
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
.field private final computeFunction:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final computing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final container:Landroidx/room/InvalidationLiveDataContainer;

.field private final database:Landroidx/room/RoomDatabase;

.field private final inTransaction:Z

.field private final invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final invalidationRunnable:Ljava/lang/Runnable;

.field private final observer:Landroidx/room/InvalidationTracker$Observer;

.field private final refreshRunnable:Ljava/lang/Runnable;

.field private final registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$PhMGW5zFk4QWazERd2lfEeLZqW0(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData;->refreshRunnable$lambda$0(Landroidx/room/RoomTrackingLiveData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lxd4mQgIWH-4QOUl4ygLPSFohKk(Landroidx/room/RoomTrackingLiveData;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable$lambda$1(Landroidx/room/RoomTrackingLiveData;)V

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/room/RoomDatabase;",
            "Landroidx/room/InvalidationLiveDataContainer;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeFunction"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tableNames"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    iput-boolean p3, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    iput-object p4, p0, Landroidx/room/RoomTrackingLiveData;->computeFunction:Ljava/util/concurrent/Callable;

    .line 49
    new-instance p1, Landroidx/room/RoomTrackingLiveData$observer$1;

    invoke-direct {p1, p5, p0}, Landroidx/room/RoomTrackingLiveData$observer$1;-><init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V

    check-cast p1, Landroidx/room/InvalidationTracker$Observer;

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->observer:Landroidx/room/InvalidationTracker$Observer;

    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance p1, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda0;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance p1, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/room/RoomTrackingLiveData$$ExternalSyntheticLambda1;-><init>(Landroidx/room/RoomTrackingLiveData;)V

    iput-object p1, p0, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static final invalidationRunnable$lambda$1(Landroidx/room/RoomTrackingLiveData;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->hasActiveObservers()Z

    move-result v0

    .line 100
    iget-object v1, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private static final refreshRunnable$lambda$0(Landroidx/room/RoomTrackingLiveData;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v3, p0, Landroidx/room/RoomTrackingLiveData;->observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v3}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 65
    :cond_0
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v3, v1

    .line 69
    :goto_0
    :try_start_0
    iget-object v4, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 72
    :try_start_1
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->computeFunction:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception while computing database live data."

    .line 76
    check-cast v0, Ljava/lang/Throwable;

    .line 74
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    if-eqz v3, :cond_2

    .line 81
    invoke-virtual {p0, v0}, Landroidx/room/RoomTrackingLiveData;->postValue(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_2
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v3, :cond_3

    .line 95
    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 85
    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final getComputeFunction()Ljava/util/concurrent/Callable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->computeFunction:Ljava/util/concurrent/Callable;

    return-object p0
.end method

.method public final getComputing()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->computing:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getDatabase()Landroidx/room/RoomDatabase;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public final getInTransaction()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    return p0
.end method

.method public final getInvalid()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->invalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final getInvalidationRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->invalidationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getObserver()Landroidx/room/InvalidationTracker$Observer;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->observer:Landroidx/room/InvalidationTracker$Observer;

    return-object p0
.end method

.method public final getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-boolean v0, p0, Landroidx/room/RoomTrackingLiveData;->inTransaction:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    .line 122
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->database:Landroidx/room/RoomDatabase;

    .line 124
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getRefreshRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getRegisteredObserver()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->registeredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method protected onActive()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onActive()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>"

    .line 110
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationLiveDataContainer;->onActive(Landroidx/lifecycle/LiveData;)V

    .line 111
    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData;->refreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroidx/lifecycle/LiveData;->onInactive()V

    iget-object v0, p0, Landroidx/room/RoomTrackingLiveData;->container:Landroidx/room/InvalidationLiveDataContainer;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LiveData<kotlin.Any>"

    .line 117
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationLiveDataContainer;->onInactive(Landroidx/lifecycle/LiveData;)V

    return-void
.end method
