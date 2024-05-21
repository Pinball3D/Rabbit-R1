.class public Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mAppContext:Landroid/content/Context;

.field private mClock:Landroidx/work/Clock;

.field private mConfiguration:Landroidx/work/Configuration;

.field private mDependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field mFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInterrupted:I

.field mResult:Landroidx/work/ListenableWorker$Result;

.field private mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field private mWorkDescription:Ljava/lang/String;

.field mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field private mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private final mWorkSpecId:Ljava/lang/String;

.field mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field mWorker:Landroidx/work/ListenableWorker;

.field final mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 77
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 104
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 108
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/16 v0, -0x100

    iput v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:I

    .line 114
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Landroid/content/Context;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 115
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 116
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 117
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 118
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 120
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorker:Landroidx/work/ListenableWorker;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 122
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Landroidx/work/Configuration;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 123
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Landroidx/work/Configuration;

    invoke-virtual {v0}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mClock:Landroidx/work/Clock;

    .line 124
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 125
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 126
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 127
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$000(Landroidx/work/impl/WorkerWrapper$Builder;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    return-void
.end method

.method private createWorkDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 602
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", tags={ "

    .line 603
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const-string v2, ", "

    .line 610
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, " } ]"

    .line 614
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleResult(Landroidx/work/ListenableWorker$Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 458
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Success;

    if-eqz v0, :cond_1

    .line 459
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Worker result SUCCESS for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 462
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 463
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    goto :goto_0

    .line 465
    :cond_0
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->setSucceededAndResolve()V

    goto :goto_0

    .line 468
    :cond_1
    instance-of p1, p1, Landroidx/work/ListenableWorker$Result$Retry;

    if-eqz p1, :cond_2

    .line 469
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Worker result RETRY for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    goto :goto_0

    .line 474
    :cond_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Worker result FAILURE for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 477
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 478
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    :goto_0
    return-void
.end method

.method private iterativelyFailWorkAndDependents(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workSpecId"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 524
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 525
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 526
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 528
    invoke-interface {v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v1

    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 529
    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    invoke-interface {v1, v2, p1}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 531
    invoke-interface {v1, p1}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private rescheduleAndResolve()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 536
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 538
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mClock:Landroidx/work/Clock;

    .line 539
    invoke-interface {v3}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 541
    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v3

    .line 540
    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 542
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 543
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 545
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 546
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 545
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 546
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 547
    throw v1
.end method

.method private resetPeriodicAndResolve()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 551
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mClock:Landroidx/work/Clock;

    .line 557
    invoke-interface {v3}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 558
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 559
    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 561
    invoke-virtual {v3}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v3

    .line 560
    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 562
    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->incrementPeriodCount(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 563
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 564
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 566
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 567
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 566
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 567
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 568
    throw v1
.end method

.method private resolve(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "needsReschedule"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 428
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 436
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->hasUnfinishedWork()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 438
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 446
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget v2, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:I

    .line 447
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 448
    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 450
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 452
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 454
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 452
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 453
    throw p1
.end method

.method private resolveIncorrectStatus()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 394
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 395
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    const-string v2, "Status for "

    if-ne v0, v1, :cond_0

    .line 396
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is RUNNING; not doing any work and rescheduling for later execution"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 398
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v3, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ; not doing any work"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 402
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    :goto_0
    return-void
.end method

.method private runWorker()V
    .locals 15

    .line 153
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 157
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 161
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-eq v0, v1, :cond_1

    .line 162
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 163
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V

    .line 164
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 202
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 181
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mClock:Landroidx/work/Clock;

    .line 182
    invoke-interface {v0}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 183
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    .line 184
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 185
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0, v3}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 193
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 202
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return-void

    :cond_3
    :try_start_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 200
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 202
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 208
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 209
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 211
    invoke-virtual {v0}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/InputMergerFactory;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 212
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 214
    invoke-virtual {v0, v1}, Landroidx/work/InputMergerFactory;->createInputMergerWithDefaultFallback(Ljava/lang/String;)Landroidx/work/InputMerger;

    move-result-object v0

    if-nez v0, :cond_5

    .line 216
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Input Merger "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    return-void

    .line 221
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 222
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 223
    invoke-interface {v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v0, v1}, Landroidx/work/InputMerger;->merge(Ljava/util/List;)Landroidx/work/Data;

    move-result-object v0

    goto :goto_0

    .line 227
    :goto_1
    new-instance v0, Landroidx/work/WorkerParameters;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 228
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget v6, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 233
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    move-result v7

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 234
    invoke-virtual {v1}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    iget-object v9, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 236
    invoke-virtual {v1}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v10

    new-instance v11, Landroidx/work/impl/utils/WorkProgressUpdater;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v12, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-direct {v11, v1, v12}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    new-instance v12, Landroidx/work/impl/utils/WorkForegroundUpdater;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    iget-object v13, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    iget-object v14, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-direct {v12, v1, v13, v14}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/Collection;Landroidx/work/WorkerParameters$RuntimeExtras;IILjava/util/concurrent/Executor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/WorkerFactory;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_6

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 243
    invoke-virtual {v1}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1

    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    :cond_6
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_7

    .line 250
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not create Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    return-void

    .line 256
    :cond_7
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->isUsed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 257
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received an already-used Worker "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; Worker Factory should return new instances"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    return-void

    :cond_8
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 262
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 266
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->trySetRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 267
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 271
    :cond_9
    new-instance v1, Landroidx/work/impl/utils/WorkForegroundRunnable;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 276
    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getForegroundUpdater()Landroidx/work/ForegroundUpdater;

    move-result-object v6

    iget-object v7, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/WorkForegroundRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 279
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    invoke-virtual {v1}, Landroidx/work/impl/utils/WorkForegroundRunnable;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 283
    new-instance v2, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/WorkerWrapper$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/ListenableFuture;)V

    new-instance v3, Landroidx/work/impl/utils/SynchronousExecutor;

    invoke-direct {v3}, Landroidx/work/impl/utils/SynchronousExecutor;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroidx/work/impl/utils/futures/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 288
    new-instance v1, Landroidx/work/impl/WorkerWrapper$1;

    invoke-direct {v1, p0, v0}, Landroidx/work/impl/WorkerWrapper$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 307
    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 288
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 311
    new-instance v2, Landroidx/work/impl/WorkerWrapper$2;

    invoke-direct {v2, p0, v0}, Landroidx/work/impl/WorkerWrapper$2;-><init>(Landroidx/work/impl/WorkerWrapper;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 337
    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object p0

    .line 311
    invoke-virtual {v1, v2, p0}, Landroidx/work/impl/utils/futures/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_2

    .line 339
    :cond_a
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 202
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 203
    throw v0
.end method

.method private setSucceededAndResolve()V
    .locals 9

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 572
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 574
    sget-object v2, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 575
    check-cast v1, Landroidx/work/ListenableWorker$Result$Success;

    .line 577
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$Result$Success;->getOutputData()Landroidx/work/Data;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 578
    invoke-interface {v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mClock:Landroidx/work/Clock;

    .line 581
    invoke-interface {v1}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 582
    invoke-interface {v3, v4}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 583
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 584
    invoke-interface {v5, v4}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v5

    sget-object v6, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 585
    invoke-interface {v5, v4}, Landroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v5

    sget-object v6, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting status to enqueued for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 588
    sget-object v6, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    invoke-interface {v5, v6, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 589
    invoke-interface {v5, v4, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueueTime(Ljava/lang/String;J)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 593
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 595
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 596
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 595
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 596
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 597
    throw v1
.end method

.method private tryCheckForInterruptionAndResolve()Z
    .locals 5

    iget v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:I

    const/16 v1, -0x100

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 413
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Work interrupted for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 414
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0, v2}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method private trySetRunning()Z
    .locals 3

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 487
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 489
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    .line 490
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 491
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 492
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const/16 v2, -0x100

    .line 493
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setStopReason(Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 496
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 498
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 499
    throw v0
.end method


# virtual methods
.method public getFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method

.method public getWorkGenerationalId()Landroidx/work/impl/model/WorkGenerationalId;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 132
    invoke-static {p0}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object p0

    return-object p0
.end method

.method public getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    return-object p0
.end method

.method public interrupt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stopReason"
        }
    .end annotation

    iput p1, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:I

    .line 380
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    const/4 v1, 0x1

    .line 382
    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->cancel(Z)Z

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 385
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/SettableFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 386
    invoke-virtual {p0, p1}, Landroidx/work/ListenableWorker;->stop(I)V

    goto :goto_0

    .line 388
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "WorkSpec "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is already done. Not interrupting."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 389
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$runWorker$0$androidx-work-impl-WorkerWrapper(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 284
    invoke-virtual {p0}, Landroidx/work/impl/utils/futures/SettableFuture;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 285
    invoke-interface {p1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method onWorkFinished()V
    .locals 3

    .line 345
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 346
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 348
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 349
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 355
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    .line 356
    :cond_0
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 357
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->handleResult(Landroidx/work/ListenableWorker$Result;)V

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, -0x200

    iput v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:I

    .line 361
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 363
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 365
    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 366
    throw v0

    :cond_3
    :goto_1
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    .line 143
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->createWorkDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 144
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->runWorker()V

    return-void
.end method

.method setFailedAndResolve()V
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 505
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->beginTransaction()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 507
    invoke-direct {p0, v1}, Landroidx/work/impl/WorkerWrapper;->iterativelyFailWorkAndDependents(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 508
    check-cast v1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 510
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$Result$Failure;->getOutputData()Landroidx/work/Data;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 512
    invoke-virtual {v4}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverrideGeneration()I

    move-result v4

    .line 511
    invoke-interface {v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecNextScheduleTimeOverride(Ljava/lang/String;I)V

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 513
    invoke-interface {v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 514
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 516
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 517
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 516
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 517
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 518
    throw v1
.end method
