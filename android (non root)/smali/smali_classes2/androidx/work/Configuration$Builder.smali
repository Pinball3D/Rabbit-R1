.class public final Landroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0006\u0010I\u001a\u00020\u0004J\u000e\u0010J\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010L\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0013J\u000e\u0010N\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0019J\u0014\u0010O\u001a\u00020\u00002\u000c\u0010P\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fJ\u000e\u0010Q\u001a\u00020\u00002\u0006\u0010%\u001a\u00020&J\u0016\u0010R\u001a\u00020\u00002\u0006\u00104\u001a\u00020\r2\u0006\u0010.\u001a\u00020\rJ\u000e\u0010S\u001a\u00020\u00002\u0006\u00101\u001a\u00020\rJ\u000e\u0010T\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\rJ\u000e\u0010U\u001a\u00020\u00002\u0006\u00107\u001a\u000208J\u0014\u0010V\u001a\u00020\u00002\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fJ\u000e\u0010W\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0019J\u000e\u0010X\u001a\u00020\u00002\u0006\u0010C\u001a\u00020DR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001a\u0010+\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u000f\"\u0004\u0008-\u0010\u0011R\u001a\u0010.\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u000f\"\u0004\u00080\u0010\u0011R\u001a\u00101\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u000f\"\u0004\u00083\u0010\u0011R\u001a\u00104\u001a\u00020\rX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u000f\"\u0004\u00086\u0010\u0011R\u001c\u00107\u001a\u0004\u0018\u000108X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010:\"\u0004\u0008;\u0010<R\"\u0010=\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001fX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008>\u0010\"\"\u0004\u0008?\u0010$R\u001c\u0010@\u001a\u0004\u0018\u00010\u0019X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010\u001b\"\u0004\u0008B\u0010\u001dR\u001c\u0010C\u001a\u0004\u0018\u00010DX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010H\u00a8\u0006Y"
    }
    d2 = {
        "Landroidx/work/Configuration$Builder;",
        "",
        "()V",
        "configuration",
        "Landroidx/work/Configuration;",
        "(Landroidx/work/Configuration;)V",
        "clock",
        "Landroidx/work/Clock;",
        "getClock$work_runtime_release",
        "()Landroidx/work/Clock;",
        "setClock$work_runtime_release",
        "(Landroidx/work/Clock;)V",
        "contentUriTriggerWorkersLimit",
        "",
        "getContentUriTriggerWorkersLimit$work_runtime_release",
        "()I",
        "setContentUriTriggerWorkersLimit$work_runtime_release",
        "(I)V",
        "defaultProcessName",
        "",
        "getDefaultProcessName$work_runtime_release",
        "()Ljava/lang/String;",
        "setDefaultProcessName$work_runtime_release",
        "(Ljava/lang/String;)V",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "getExecutor$work_runtime_release",
        "()Ljava/util/concurrent/Executor;",
        "setExecutor$work_runtime_release",
        "(Ljava/util/concurrent/Executor;)V",
        "initializationExceptionHandler",
        "Landroidx/core/util/Consumer;",
        "",
        "getInitializationExceptionHandler$work_runtime_release",
        "()Landroidx/core/util/Consumer;",
        "setInitializationExceptionHandler$work_runtime_release",
        "(Landroidx/core/util/Consumer;)V",
        "inputMergerFactory",
        "Landroidx/work/InputMergerFactory;",
        "getInputMergerFactory$work_runtime_release",
        "()Landroidx/work/InputMergerFactory;",
        "setInputMergerFactory$work_runtime_release",
        "(Landroidx/work/InputMergerFactory;)V",
        "loggingLevel",
        "getLoggingLevel$work_runtime_release",
        "setLoggingLevel$work_runtime_release",
        "maxJobSchedulerId",
        "getMaxJobSchedulerId$work_runtime_release",
        "setMaxJobSchedulerId$work_runtime_release",
        "maxSchedulerLimit",
        "getMaxSchedulerLimit$work_runtime_release",
        "setMaxSchedulerLimit$work_runtime_release",
        "minJobSchedulerId",
        "getMinJobSchedulerId$work_runtime_release",
        "setMinJobSchedulerId$work_runtime_release",
        "runnableScheduler",
        "Landroidx/work/RunnableScheduler;",
        "getRunnableScheduler$work_runtime_release",
        "()Landroidx/work/RunnableScheduler;",
        "setRunnableScheduler$work_runtime_release",
        "(Landroidx/work/RunnableScheduler;)V",
        "schedulingExceptionHandler",
        "getSchedulingExceptionHandler$work_runtime_release",
        "setSchedulingExceptionHandler$work_runtime_release",
        "taskExecutor",
        "getTaskExecutor$work_runtime_release",
        "setTaskExecutor$work_runtime_release",
        "workerFactory",
        "Landroidx/work/WorkerFactory;",
        "getWorkerFactory$work_runtime_release",
        "()Landroidx/work/WorkerFactory;",
        "setWorkerFactory$work_runtime_release",
        "(Landroidx/work/WorkerFactory;)V",
        "build",
        "setClock",
        "setContentUriTriggerWorkersLimit",
        "setDefaultProcessName",
        "processName",
        "setExecutor",
        "setInitializationExceptionHandler",
        "exceptionHandler",
        "setInputMergerFactory",
        "setJobSchedulerJobIdRange",
        "setMaxSchedulerLimit",
        "setMinimumLoggingLevel",
        "setRunnableScheduler",
        "setSchedulingExceptionHandler",
        "setTaskExecutor",
        "setWorkerFactory",
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
.field private clock:Landroidx/work/Clock;

.field private contentUriTriggerWorkersLimit:I

.field private defaultProcessName:Ljava/lang/String;

.field private executor:Ljava/util/concurrent/Executor;

.field private initializationExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private inputMergerFactory:Landroidx/work/InputMergerFactory;

.field private loggingLevel:I

.field private maxJobSchedulerId:I

.field private maxSchedulerLimit:I

.field private minJobSchedulerId:I

.field private runnableScheduler:Landroidx/work/RunnableScheduler;

.field private schedulingExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private workerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 183
    invoke-static {}, Landroidx/work/ConfigurationKt;->getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    const v0, 0x7fffffff

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    const/16 v0, 0x14

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 183
    invoke-static {}, Landroidx/work/ConfigurationKt;->getDEFAULT_CONTENT_URI_TRIGGERS_WORKERS_LIMIT()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    .line 200
    invoke-virtual {p1}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    .line 201
    invoke-virtual {p1}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    .line 202
    invoke-virtual {p1}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/InputMergerFactory;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 203
    invoke-virtual {p1}, Landroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 204
    invoke-virtual {p1}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    .line 205
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMinimumLoggingLevel()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    .line 206
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMinJobSchedulerId()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    .line 207
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMaxJobSchedulerId()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    .line 208
    invoke-virtual {p1}, Landroidx/work/Configuration;->getMaxSchedulerLimit()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    .line 209
    invoke-virtual {p1}, Landroidx/work/Configuration;->getRunnableScheduler()Landroidx/work/RunnableScheduler;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 210
    invoke-virtual {p1}, Landroidx/work/Configuration;->getInitializationExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 211
    invoke-virtual {p1}, Landroidx/work/Configuration;->getSchedulingExceptionHandler()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 212
    invoke-virtual {p1}, Landroidx/work/Configuration;->getDefaultProcessName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Landroidx/work/Configuration;
    .locals 1

    .line 428
    new-instance v0, Landroidx/work/Configuration;

    invoke-direct {v0, p0}, Landroidx/work/Configuration;-><init>(Landroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public final getClock$work_runtime_release()Landroidx/work/Clock;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    return-object p0
.end method

.method public final getContentUriTriggerWorkersLimit$work_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return p0
.end method

.method public final getDefaultProcessName$work_runtime_release()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public final getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object p0
.end method

.method public final getLoggingLevel$work_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    return p0
.end method

.method public final getMaxJobSchedulerId$work_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    return p0
.end method

.method public final getMaxSchedulerLimit$work_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    return p0
.end method

.method public final getMinJobSchedulerId$work_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    return p0
.end method

.method public final getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-object p0
.end method

.method public final getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    return-object p0
.end method

.method public final setClock(Landroidx/work/Clock;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "clock"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    return-object p0
.end method

.method public final setClock$work_runtime_release(Landroidx/work/Clock;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->clock:Landroidx/work/Clock;

    return-void
.end method

.method public final setContentUriTriggerWorkersLimit(I)Landroidx/work/Configuration$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return-object p0
.end method

.method public final setContentUriTriggerWorkersLimit$work_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/work/Configuration$Builder;->contentUriTriggerWorkersLimit:I

    return-void
.end method

.method public final setDefaultProcessName(Ljava/lang/String;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "processName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public final setDefaultProcessName$work_runtime_release(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->defaultProcessName:Ljava/lang/String;

    return-void
.end method

.method public final setExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final setExecutor$work_runtime_release(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final setInitializationExceptionHandler(Landroidx/core/util/Consumer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroidx/work/Configuration$Builder;"
        }
    .end annotation

    const-string v0, "exceptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final setInitializationExceptionHandler$work_runtime_release(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-void
.end method

.method public final setInputMergerFactory(Landroidx/work/InputMergerFactory;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "inputMergerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object p0
.end method

.method public final setInputMergerFactory$work_runtime_release(Landroidx/work/InputMergerFactory;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-void
.end method

.method public final setJobSchedulerJobIdRange(II)Landroidx/work/Configuration$Builder;
    .locals 2

    sub-int v0, p2, p1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iput p1, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    iput p2, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    return-object p0

    .line 296
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WorkManager needs a range of at least 1000 job ids."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setLoggingLevel$work_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    return-void
.end method

.method public final setMaxJobSchedulerId$work_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/work/Configuration$Builder;->maxJobSchedulerId:I

    return-void
.end method

.method public final setMaxSchedulerLimit(I)Landroidx/work/Configuration$Builder;
    .locals 1

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    const/16 v0, 0x32

    .line 330
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    return-object p0

    .line 327
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setMaxSchedulerLimit$work_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/work/Configuration$Builder;->maxSchedulerLimit:I

    return-void
.end method

.method public final setMinJobSchedulerId$work_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/work/Configuration$Builder;->minJobSchedulerId:I

    return-void
.end method

.method public final setMinimumLoggingLevel(I)Landroidx/work/Configuration$Builder;
    .locals 0

    iput p1, p0, Landroidx/work/Configuration$Builder;->loggingLevel:I

    return-object p0
.end method

.method public final setRunnableScheduler(Landroidx/work/RunnableScheduler;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-object p0
.end method

.method public final setRunnableScheduler$work_runtime_release(Landroidx/work/RunnableScheduler;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-void
.end method

.method public final setSchedulingExceptionHandler(Landroidx/core/util/Consumer;)Landroidx/work/Configuration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Landroidx/work/Configuration$Builder;"
        }
    .end annotation

    const-string v0, "schedulingExceptionHandler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final setSchedulingExceptionHandler$work_runtime_release(Landroidx/core/util/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-void
.end method

.method public final setTaskExecutor(Ljava/util/concurrent/Executor;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "taskExecutor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final setTaskExecutor$work_runtime_release(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final setWorkerFactory(Landroidx/work/WorkerFactory;)Landroidx/work/Configuration$Builder;
    .locals 1

    const-string v0, "workerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    return-object p0
.end method

.method public final setWorkerFactory$work_runtime_release(Landroidx/work/WorkerFactory;)V
    .locals 0

    iput-object p1, p0, Landroidx/work/Configuration$Builder;->workerFactory:Landroidx/work/WorkerFactory;

    return-void
.end method
