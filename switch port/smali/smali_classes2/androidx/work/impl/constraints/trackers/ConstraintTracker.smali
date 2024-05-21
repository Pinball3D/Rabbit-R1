.class public abstract Landroidx/work/impl/constraints/trackers/ConstraintTracker;
.super Ljava/lang/Object;
.source "ConstraintTracker.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstraintTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstraintTracker.kt\nandroidx/work/impl/constraints/trackers/ConstraintTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1855#2,2:125\n*S KotlinDebug\n*F\n+ 1 ConstraintTracker.kt\nandroidx/work/impl/constraints/trackers/ConstraintTracker\n*L\n96#1:125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0017\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0014\u0010\u0017\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fJ\r\u0010\u001a\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u0014J\u0014\u0010\u001b\u001a\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000fJ\u0008\u0010\u001c\u001a\u00020\u0018H&J\u0008\u0010\u001d\u001a\u00020\u0018H&R\u0014\u0010\u0008\u001a\u00020\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u000b\u001a\u0004\u0018\u00018\u0000X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u001a\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u000f0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0011\u001a\u00028\u00008F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/work/impl/constraints/trackers/ConstraintTracker;",
        "T",
        "",
        "context",
        "Landroid/content/Context;",
        "taskExecutor",
        "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;",
        "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V",
        "appContext",
        "getAppContext",
        "()Landroid/content/Context;",
        "currentState",
        "Ljava/lang/Object;",
        "listeners",
        "Ljava/util/LinkedHashSet;",
        "Landroidx/work/impl/constraints/ConstraintListener;",
        "lock",
        "newState",
        "state",
        "getState",
        "()Ljava/lang/Object;",
        "setState",
        "(Ljava/lang/Object;)V",
        "addListener",
        "",
        "listener",
        "readSystemState",
        "removeListener",
        "startTracking",
        "stopTracking",
        "work-runtime_release"
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
.field private final appContext:Landroid/content/Context;

.field private currentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;

.field private final taskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method public static synthetic $r8$lambda$RK0TULesrSgb2ZBnJ6LX6irCfZ4(Ljava/util/List;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->_set_state_$lambda$4$lambda$3(Ljava/util/List;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 37
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    return-void
.end method

.method private static final _set_state_$lambda$4$lambda$3(Ljava/util/List;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V
    .locals 2

    const-string v0, "$listenersList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    check-cast p0, Ljava/lang/Iterable;

    .line 125
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/constraints/ConstraintListener;

    .line 99
    iget-object v1, p1, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroidx/work/impl/constraints/ConstraintListener;->onConstraintChanged(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addListener(Landroidx/work/impl/constraints/ConstraintListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 49
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 50
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 51
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->readSystemState()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 53
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    .line 54
    invoke-static {}, Landroidx/work/impl/constraints/trackers/ConstraintTrackerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": initial state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->startTracking()V

    :cond_0
    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    .line 59
    invoke-interface {p1, p0}, Landroidx/work/impl/constraints/ConstraintListener;->onConstraintChanged(Ljava/lang/Object;)V

    .line 61
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected final getAppContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->readSystemState()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract readSystemState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final removeListener(Landroidx/work/impl/constraints/ConstraintListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 70
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 71
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V

    .line 74
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setState(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->lock:Ljava/lang/Object;

    .line 83
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 84
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 85
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->currentState:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->listeners:Ljava/util/LinkedHashSet;

    .line 94
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Landroidx/work/impl/constraints/trackers/ConstraintTracker;->taskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 95
    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/constraints/trackers/ConstraintTracker$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Landroidx/work/impl/constraints/trackers/ConstraintTracker$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Landroidx/work/impl/constraints/trackers/ConstraintTracker;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 102
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method
