.class public final Landroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/Configuration$Builder;,
        Landroidx/work/Configuration$Companion;,
        Landroidx/work/Configuration$Provider;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 62\u00020\u0001:\u0003567B\u000f\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u001a\u001a\u00020\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0013\u0010\u001e\u001a\u00020\u001f8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010 R\u0011\u0010!\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u000cR\u0013\u0010#\u001a\u00020\n8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010\u000cR\u0011\u0010%\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u000cR\u0013\u0010\'\u001a\u00020\n8G\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010\u000cR\u0011\u0010)\u001a\u00020*\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0019\u0010-\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0019R\u0011\u0010/\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u0014R\u0011\u00101\u001a\u000202\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104\u00a8\u00068"
    }
    d2 = {
        "Landroidx/work/Configuration;",
        "",
        "builder",
        "Landroidx/work/Configuration$Builder;",
        "(Landroidx/work/Configuration$Builder;)V",
        "clock",
        "Landroidx/work/Clock;",
        "getClock",
        "()Landroidx/work/Clock;",
        "contentUriTriggerWorkersLimit",
        "",
        "getContentUriTriggerWorkersLimit",
        "()I",
        "defaultProcessName",
        "",
        "getDefaultProcessName",
        "()Ljava/lang/String;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "initializationExceptionHandler",
        "Landroidx/core/util/Consumer;",
        "",
        "getInitializationExceptionHandler",
        "()Landroidx/core/util/Consumer;",
        "inputMergerFactory",
        "Landroidx/work/InputMergerFactory;",
        "getInputMergerFactory",
        "()Landroidx/work/InputMergerFactory;",
        "isUsingDefaultTaskExecutor",
        "",
        "()Z",
        "maxJobSchedulerId",
        "getMaxJobSchedulerId",
        "maxSchedulerLimit",
        "getMaxSchedulerLimit",
        "minJobSchedulerId",
        "getMinJobSchedulerId",
        "minimumLoggingLevel",
        "getMinimumLoggingLevel",
        "runnableScheduler",
        "Landroidx/work/RunnableScheduler;",
        "getRunnableScheduler",
        "()Landroidx/work/RunnableScheduler;",
        "schedulingExceptionHandler",
        "getSchedulingExceptionHandler",
        "taskExecutor",
        "getTaskExecutor",
        "workerFactory",
        "Landroidx/work/WorkerFactory;",
        "getWorkerFactory",
        "()Landroidx/work/WorkerFactory;",
        "Builder",
        "Companion",
        "Provider",
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


# static fields
.field public static final Companion:Landroidx/work/Configuration$Companion;

.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field private final clock:Landroidx/work/Clock;

.field private final contentUriTriggerWorkersLimit:I

.field private final defaultProcessName:Ljava/lang/String;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final initializationExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final inputMergerFactory:Landroidx/work/InputMergerFactory;

.field private final isUsingDefaultTaskExecutor:Z

.field private final maxJobSchedulerId:I

.field private final maxSchedulerLimit:I

.field private final minJobSchedulerId:I

.field private final minimumLoggingLevel:I

.field private final runnableScheduler:Landroidx/work/RunnableScheduler;

.field private final schedulingExceptionHandler:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final taskExecutor:Ljava/util/concurrent/Executor;

.field private final workerFactory:Landroidx/work/WorkerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/Configuration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/Configuration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/Configuration;->Companion:Landroidx/work/Configuration$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/work/Configuration$Builder;)V
    .locals 3

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/Executor;

    .line 142
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroidx/work/Configuration;->isUsingDefaultTaskExecutor:Z

    .line 146
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getTaskExecutor$work_runtime_release()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Landroidx/work/ConfigurationKt;->access$createDefaultExecutor(Z)Ljava/util/concurrent/Executor;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 147
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getClock$work_runtime_release()Landroidx/work/Clock;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Landroidx/work/SystemClock;

    invoke-direct {v0}, Landroidx/work/SystemClock;-><init>()V

    check-cast v0, Landroidx/work/Clock;

    :cond_3
    iput-object v0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/Clock;

    .line 148
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getWorkerFactory$work_runtime_release()Landroidx/work/WorkerFactory;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Landroidx/work/WorkerFactory;->getDefaultWorkerFactory()Landroidx/work/WorkerFactory;

    move-result-object v0

    const-string v1, "getDefaultWorkerFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    iput-object v0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    .line 149
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getInputMergerFactory$work_runtime_release()Landroidx/work/InputMergerFactory;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object v0, Landroidx/work/NoOpInputMergerFactory;->INSTANCE:Landroidx/work/NoOpInputMergerFactory;

    check-cast v0, Landroidx/work/InputMergerFactory;

    :cond_5
    iput-object v0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    .line 150
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getRunnableScheduler$work_runtime_release()Landroidx/work/RunnableScheduler;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Landroidx/work/impl/DefaultRunnableScheduler;

    invoke-direct {v0}, Landroidx/work/impl/DefaultRunnableScheduler;-><init>()V

    check-cast v0, Landroidx/work/RunnableScheduler;

    :cond_6
    iput-object v0, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/RunnableScheduler;

    .line 151
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getLoggingLevel$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    .line 152
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMinJobSchedulerId$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->minJobSchedulerId:I

    .line 153
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxJobSchedulerId$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    .line 158
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getMaxSchedulerLimit$work_runtime_release()I

    move-result v0

    iput v0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    .line 160
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getInitializationExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    .line 161
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getSchedulingExceptionHandler$work_runtime_release()Landroidx/core/util/Consumer;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    .line 162
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getDefaultProcessName$work_runtime_release()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroidx/work/Configuration$Builder;->getContentUriTriggerWorkersLimit$work_runtime_release()I

    move-result p1

    iput p1, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    return-void
.end method


# virtual methods
.method public final getClock()Landroidx/work/Clock;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->clock:Landroidx/work/Clock;

    return-object p0
.end method

.method public final getContentUriTriggerWorkersLimit()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->contentUriTriggerWorkersLimit:I

    return p0
.end method

.method public final getDefaultProcessName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->defaultProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getInitializationExceptionHandler()Landroidx/core/util/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration;->initializationExceptionHandler:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final getInputMergerFactory()Landroidx/work/InputMergerFactory;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->inputMergerFactory:Landroidx/work/InputMergerFactory;

    return-object p0
.end method

.method public final getMaxJobSchedulerId()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->maxJobSchedulerId:I

    return p0
.end method

.method public final getMaxSchedulerLimit()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->maxSchedulerLimit:I

    return p0
.end method

.method public final getMinJobSchedulerId()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->minJobSchedulerId:I

    return p0
.end method

.method public final getMinimumLoggingLevel()I
    .locals 0

    iget p0, p0, Landroidx/work/Configuration;->minimumLoggingLevel:I

    return p0
.end method

.method public final getRunnableScheduler()Landroidx/work/RunnableScheduler;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->runnableScheduler:Landroidx/work/RunnableScheduler;

    return-object p0
.end method

.method public final getSchedulingExceptionHandler()Landroidx/core/util/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/work/Configuration;->schedulingExceptionHandler:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method public final getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getWorkerFactory()Landroidx/work/WorkerFactory;
    .locals 0

    iget-object p0, p0, Landroidx/work/Configuration;->workerFactory:Landroidx/work/WorkerFactory;

    return-object p0
.end method

.method public final isUsingDefaultTaskExecutor()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/work/Configuration;->isUsingDefaultTaskExecutor:Z

    return p0
.end method
