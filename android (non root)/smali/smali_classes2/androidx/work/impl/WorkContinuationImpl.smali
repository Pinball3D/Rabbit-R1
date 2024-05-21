.class public Landroidx/work/impl/WorkContinuationImpl;
.super Landroidx/work/WorkContinuation;
.source "WorkContinuationImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnqueued:Z

.field private final mExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mOperation:Landroidx/work/Operation;

.field private final mParents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/WorkContinuationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mWork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkContinuationImpl"

    .line 52
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/WorkContinuationImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "name",
            "existingWorkPolicy",
            "work"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 127
    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "name",
            "existingWorkPolicy",
            "work",
            "parents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/lang/String;",
            "Landroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/work/impl/WorkContinuationImpl;",
            ">;)V"
        }
    .end annotation

    .line 134
    invoke-direct {p0}, Landroidx/work/WorkContinuation;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iput-object p2, p0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

    iput-object p4, p0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    iput-object p5, p0, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    if-eqz p5, :cond_0

    .line 143
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/impl/WorkContinuationImpl;

    iget-object p5, p0, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    .line 144
    iget-object p2, p2, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 147
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 148
    sget-object p2, Landroidx/work/ExistingWorkPolicy;->REPLACE:Landroidx/work/ExistingWorkPolicy;

    if-ne p3, p2, :cond_2

    .line 149
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/WorkRequest;

    invoke-virtual {p2}, Landroidx/work/WorkRequest;->getWorkSpec()Landroidx/work/impl/model/WorkSpec;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/work/impl/model/WorkSpec;->getNextScheduleTimeOverride()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    goto :goto_2

    .line 152
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Next Schedule Time Override must be used with ExistingPeriodicWorkPolicyUPDATE (preferably) or KEEP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 156
    :cond_2
    :goto_2
    invoke-interface {p4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/WorkRequest;

    invoke-virtual {p2}, Landroidx/work/WorkRequest;->getStringId()Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    .line 157
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    .line 158
    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workManagerImpl",
            "work"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkManagerImpl;",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    .line 114
    sget-object v3, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "continuation",
            "visited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkContinuationImpl;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    invoke-static {p0}, Landroidx/work/impl/WorkContinuationImpl;->prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;

    move-result-object v0

    .line 251
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    .line 259
    :cond_1
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 260
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/WorkContinuationImpl;

    .line 263
    invoke-static {v1, p1}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 273
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static prerequisitesFor(Landroidx/work/impl/WorkContinuationImpl;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuation"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/work/impl/WorkContinuationImpl;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 285
    invoke-virtual {p0}, Landroidx/work/impl/WorkContinuationImpl;->getParents()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 286
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/WorkContinuationImpl;

    .line 288
    invoke-virtual {v1}, Landroidx/work/impl/WorkContinuationImpl;->getIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected combineInternal(Ljava/util/List;)Landroidx/work/WorkContinuation;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "continuations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/WorkContinuation;",
            ">;)",
            "Landroidx/work/WorkContinuation;"
        }
    .end annotation

    .line 209
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Landroidx/work/impl/workers/CombineContinuationsWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    const-class v1, Landroidx/work/ArrayCreatingInputMerger;

    .line 211
    invoke-virtual {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;->setInputMerger(Ljava/lang/Class;)Landroidx/work/OneTimeWorkRequest$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object v0

    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 214
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/WorkContinuation;

    .line 216
    check-cast v1, Landroidx/work/impl/WorkContinuationImpl;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_0
    new-instance p1, Landroidx/work/impl/WorkContinuationImpl;

    iget-object v2, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    const/4 v3, 0x0

    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 222
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public enqueue()Landroidx/work/Operation;
    .locals 5

    iget-boolean v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Landroidx/work/impl/utils/EnqueueRunnable;

    invoke-direct {v0, p0}, Landroidx/work/impl/utils/EnqueueRunnable;-><init>(Landroidx/work/impl/WorkContinuationImpl;)V

    iget-object v1, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 197
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    .line 198
    invoke-virtual {v0}, Landroidx/work/impl/utils/EnqueueRunnable;->getOperation()Landroidx/work/Operation;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mOperation:Landroidx/work/Operation;

    goto :goto_0

    .line 200
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/WorkContinuationImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Already enqueued work ids ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    iget-object v4, p0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    .line 201
    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mOperation:Landroidx/work/Operation;

    return-object p0
.end method

.method public getAllIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    return-object p0
.end method

.method public getExistingWorkPolicy()Landroidx/work/ExistingWorkPolicy;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mExistingWorkPolicy:Landroidx/work/ExistingWorkPolicy;

    return-object p0
.end method

.method public getIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mIds:Ljava/util/List;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getParents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/work/impl/WorkContinuationImpl;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mParents:Ljava/util/List;

    return-object p0
.end method

.method public getWork()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroidx/work/WorkRequest;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWork:Ljava/util/List;

    return-object p0
.end method

.method public getWorkInfos()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v1, p0, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    .line 184
    invoke-static {v0, v1}, Landroidx/work/impl/utils/StatusRunnable;->forStringIds(Landroidx/work/impl/WorkManagerImpl;Ljava/util/List;)Landroidx/work/impl/utils/StatusRunnable;

    move-result-object v0

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 186
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p0

    invoke-interface {p0, v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V

    .line 187
    invoke-virtual {v0}, Landroidx/work/impl/utils/StatusRunnable;->getFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public getWorkInfosLiveData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Landroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mAllIds:Ljava/util/List;

    .line 177
    invoke-virtual {v0, p0}, Landroidx/work/impl/WorkManagerImpl;->getWorkInfosById(Ljava/util/List;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public getWorkManagerImpl()Landroidx/work/impl/WorkManagerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    return-object p0
.end method

.method public hasCycles()Z
    .locals 1

    .line 232
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v0}, Landroidx/work/impl/WorkContinuationImpl;->hasCycles(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method public isEnqueued()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    return p0
.end method

.method public markEnqueued()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/work/impl/WorkContinuationImpl;->mEnqueued:Z

    return-void
.end method

.method public then(Ljava/util/List;)Landroidx/work/WorkContinuation;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "work"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Landroidx/work/WorkContinuation;"
        }
    .end annotation

    .line 164
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 167
    :cond_0
    new-instance v0, Landroidx/work/impl/WorkContinuationImpl;

    iget-object v2, p0, Landroidx/work/impl/WorkContinuationImpl;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    iget-object v3, p0, Landroidx/work/impl/WorkContinuationImpl;->mName:Ljava/lang/String;

    sget-object v4, Landroidx/work/ExistingWorkPolicy;->KEEP:Landroidx/work/ExistingWorkPolicy;

    .line 171
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Landroidx/work/impl/WorkContinuationImpl;-><init>(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Landroidx/work/ExistingWorkPolicy;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
