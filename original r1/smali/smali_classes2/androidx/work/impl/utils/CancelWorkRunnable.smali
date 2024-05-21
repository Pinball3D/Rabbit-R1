.class public abstract Landroidx/work/impl/utils/CancelWorkRunnable;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mOperation:Landroidx/work/impl/OperationImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Landroidx/work/impl/OperationImpl;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-void
.end method

.method public static forAll(Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "workManagerImpl"
        }
    .end annotation

    .line 212
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$4;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$4;-><init>(Landroidx/work/impl/WorkManagerImpl;)V

    return-object v0
.end method

.method public static forId(Ljava/util/UUID;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "id",
            "workManagerImpl"
        }
    .end annotation

    .line 118
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$1;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$1;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static forName(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;Z)Landroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "workManagerImpl",
            "allowReschedule"
        }
    .end annotation

    .line 180
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$3;

    invoke-direct {v0, p1, p0, p2}, Landroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static forTag(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tag",
            "workManagerImpl"
        }
    .end annotation

    .line 146
    new-instance v0, Landroidx/work/impl/utils/CancelWorkRunnable$2;

    invoke-direct {v0, p1, p0}, Landroidx/work/impl/utils/CancelWorkRunnable$2;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method private iterativelyCancelWorkAndDependents(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workDatabase",
            "workSpecId"
        }
    .end annotation

    .line 90
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object p0

    .line 91
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object p1

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 95
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 97
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 99
    invoke-interface {p0, p2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    .line 100
    sget-object v2, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    .line 101
    invoke-interface {p0, p2}, Landroidx/work/impl/model/WorkSpecDao;->setCancelledState(Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-interface {p1, p2}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method cancel(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "workSpecId"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/work/impl/utils/CancelWorkRunnable;->iterativelyCancelWorkAndDependents(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object p0

    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, p2, v0}, Landroidx/work/impl/Processor;->stopAndCancelWork(Ljava/lang/String;I)Z

    .line 77
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/Scheduler;

    .line 78
    invoke-interface {p1, p2}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOperation()Landroidx/work/Operation;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    return-object p0
.end method

.method reschedulePendingWorkers(Landroidx/work/impl/WorkManagerImpl;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workManagerImpl"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object p0

    .line 85
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Landroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Landroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object p1

    .line 83
    invoke-static {p0, v0, p1}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/utils/CancelWorkRunnable;->runInternal()V

    iget-object v0, p0, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 63
    sget-object v1, Landroidx/work/Operation;->SUCCESS:Landroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, v1}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Landroidx/work/impl/OperationImpl;

    .line 65
    new-instance v1, Landroidx/work/Operation$State$FAILURE;

    invoke-direct {v1, v0}, Landroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Landroidx/work/impl/OperationImpl;->markState(Landroidx/work/Operation$State;)V

    :goto_0
    return-void
.end method

.method abstract runInternal()V
.end method
