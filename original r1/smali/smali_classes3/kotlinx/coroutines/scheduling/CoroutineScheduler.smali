.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "CoroutineScheduler.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1033:1\n285#1:1036\n283#1:1037\n283#1:1038\n285#1:1039\n280#1:1045\n281#1,5:1046\n291#1:1052\n283#1:1053\n284#1:1054\n283#1:1060\n284#1:1061\n280#1:1062\n288#1:1063\n283#1:1064\n283#1:1067\n284#1:1068\n285#1:1069\n90#2:1034\n90#2:1051\n1#3:1035\n28#4,4:1040\n28#4,4:1055\n20#5:1044\n20#5:1059\n87#6:1065\n610#7:1066\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n281#1:1036\n288#1:1037\n289#1:1038\n298#1:1039\n347#1:1045\n375#1:1046,5\n398#1:1052\n445#1:1053\n446#1:1054\n482#1:1060\n483#1:1061\n489#1:1062\n498#1:1063\n498#1:1064\n576#1:1067\n577#1:1068\n578#1:1069\n119#1:1034\n395#1:1051\n347#1:1040,4\n478#1:1055,4\n347#1:1044\n478#1:1059\n515#1:1065\n522#1:1066\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008!\u0008\u0000\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0003IJKB)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0011\u0010\r\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0086\u0008J\u0011\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\u0008J\u0008\u0010#\u001a\u00020$H\u0016J\u0008\u0010%\u001a\u00020\u0004H\u0002J\u001a\u0010&\u001a\u00020 2\n\u0010\'\u001a\u00060(j\u0002`)2\u0006\u0010*\u001a\u00020+J\u0011\u0010\u0012\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\u0008J\u000e\u0010,\u001a\u0008\u0018\u00010\u001dR\u00020\u0000H\u0002J\t\u0010-\u001a\u00020$H\u0082\u0008J\t\u0010.\u001a\u00020\u0004H\u0082\u0008J&\u0010/\u001a\u00020$2\n\u0010\'\u001a\u00060(j\u0002`)2\u0008\u0008\u0002\u0010*\u001a\u00020+2\u0008\u0008\u0002\u00100\u001a\u00020\u0018J\u0014\u00101\u001a\u00020$2\n\u00102\u001a\u00060(j\u0002`)H\u0016J\t\u00103\u001a\u00020\u0007H\u0082\u0008J\t\u00104\u001a\u00020\u0004H\u0082\u0008J\u0014\u00105\u001a\u00020\u00042\n\u00106\u001a\u00060\u001dR\u00020\u0000H\u0002J\u000e\u00107\u001a\u0008\u0018\u00010\u001dR\u00020\u0000H\u0002J\u0012\u00108\u001a\u00020\u00182\n\u00106\u001a\u00060\u001dR\u00020\u0000J\"\u00109\u001a\u00020$2\n\u00106\u001a\u00060\u001dR\u00020\u00002\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u0004J\t\u0010<\u001a\u00020\u0007H\u0082\u0008J\u000e\u0010=\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020\u0007J\u0018\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0018H\u0002J\u0006\u0010C\u001a\u00020$J\u0008\u0010D\u001a\u00020\tH\u0016J\t\u0010E\u001a\u00020\u0018H\u0082\u0008J\u0012\u0010F\u001a\u00020\u00182\u0008\u0008\u0002\u0010!\u001a\u00020\u0007H\u0002J\u0008\u0010G\u001a\u00020\u0018H\u0002J$\u0010H\u001a\u0004\u0018\u00010 *\u0008\u0018\u00010\u001dR\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u00100\u001a\u00020\u0018H\u0002R\t\u0010\u000b\u001a\u00020\u000cX\u0082\u0004R\u0015\u0010\r\u001a\u00020\u00048\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\t\u0010\u0010\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0015\u0010\u0012\u001a\u00020\u00048\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u000fR\u0010\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00158\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0019R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\t\u0010\u001a\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\u000c\u0012\u0008\u0012\u00060\u001dR\u00020\u00000\u001c8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006L"
    }
    d2 = {
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler;",
        "Ljava/util/concurrent/Executor;",
        "Ljava/io/Closeable;",
        "corePoolSize",
        "",
        "maxPoolSize",
        "idleWorkerKeepAliveNs",
        "",
        "schedulerName",
        "",
        "(IIJLjava/lang/String;)V",
        "_isTerminated",
        "Lkotlinx/atomicfu/AtomicBoolean;",
        "availableCpuPermits",
        "getAvailableCpuPermits",
        "()I",
        "controlState",
        "Lkotlinx/atomicfu/AtomicLong;",
        "createdWorkers",
        "getCreatedWorkers",
        "globalBlockingQueue",
        "Lkotlinx/coroutines/scheduling/GlobalQueue;",
        "globalCpuQueue",
        "isTerminated",
        "",
        "()Z",
        "parkedWorkersStack",
        "workers",
        "Lkotlinx/coroutines/internal/ResizableAtomicArray;",
        "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
        "addToGlobalQueue",
        "task",
        "Lkotlinx/coroutines/scheduling/Task;",
        "state",
        "blockingTasks",
        "close",
        "",
        "createNewWorker",
        "createTask",
        "block",
        "Ljava/lang/Runnable;",
        "Lkotlinx/coroutines/Runnable;",
        "taskContext",
        "Lkotlinx/coroutines/scheduling/TaskContext;",
        "currentWorker",
        "decrementBlockingTasks",
        "decrementCreatedWorkers",
        "dispatch",
        "tailDispatch",
        "execute",
        "command",
        "incrementBlockingTasks",
        "incrementCreatedWorkers",
        "parkedWorkersStackNextIndex",
        "worker",
        "parkedWorkersStackPop",
        "parkedWorkersStackPush",
        "parkedWorkersStackTopUpdate",
        "oldIndex",
        "newIndex",
        "releaseCpuPermit",
        "runSafely",
        "shutdown",
        "timeout",
        "signalBlockingWork",
        "stateSnapshot",
        "skipUnpark",
        "signalCpuWork",
        "toString",
        "tryAcquireCpuPermit",
        "tryCreateWorker",
        "tryUnpark",
        "submitToLocalQueue",
        "Companion",
        "Worker",
        "WorkerState",
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
.field private static final BLOCKING_MASK:J = 0x3ffffe00000L

.field private static final BLOCKING_SHIFT:I = 0x15

.field private static final CLAIMED:I = 0x0

.field private static final CPU_PERMITS_MASK:J = 0x7ffffc0000000000L

.field private static final CPU_PERMITS_SHIFT:I = 0x2a

.field private static final CREATED_MASK:J = 0x1fffffL

.field public static final Companion:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

.field public static final MAX_SUPPORTED_POOL_SIZE:I = 0x1ffffe

.field public static final MIN_SUPPORTED_POOL_SIZE:I = 0x1

.field public static final NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

.field private static final PARKED:I = -0x1

.field private static final PARKED_INDEX_MASK:J = 0x1fffffL

.field private static final PARKED_VERSION_INC:J = 0x200000L

.field private static final PARKED_VERSION_MASK:J = -0x200000L

.field private static final TERMINATED:I = 0x1

.field private static final _isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile _isTerminated:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field private volatile controlState:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final corePoolSize:I

.field public final globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field public final idleWorkerKeepAliveNs:J

.field public final maxPoolSize:I

.field private volatile parkedWorkersStack:J
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final schedulerName:Ljava/lang/String;

.field public final workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/ResizableAtomicArray<",
            "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->Companion:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const-string v0, "parkedWorkersStack"

    const-class v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "controlState"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_isTerminated"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 313
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->idleWorkerKeepAliveNs:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    const/4 p5, 0x1

    if-lt p1, p5, :cond_3

    const-string p5, "Max pool size "

    if-lt p2, p1, :cond_2

    const v0, 0x1ffffe

    if-gt p2, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-lez p2, :cond_0

    .line 114
    new-instance p2, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 116
    new-instance p2, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {p2}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 269
    new-instance p2, Lkotlinx/coroutines/internal/ResizableAtomicArray;

    add-int/lit8 p3, p1, 0x1

    mul-int/lit8 p3, p3, 0x2

    invoke-direct {p2, p3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;-><init>(I)V

    iput-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    int-to-long p1, p1

    const/16 p3, 0x2a

    shl-long/2addr p1, p3

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState:J

    const/4 p1, 0x0

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated:I

    return-void

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Idle worker keep alive time "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " must be positive"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 105
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 102
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Core pool size "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " should be at least 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    .line 95
    sget-wide p3, Lkotlinx/coroutines/scheduling/TasksKt;->IDLE_WORKER_KEEP_ALIVE_NS:J

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    .line 96
    sget-object p5, Lkotlinx/coroutines/scheduling/TasksKt;->DEFAULT_SCHEDULER_NAME:Ljava/lang/String;

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 92
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-object v0
.end method

.method private final addToGlobalQueue(Lkotlinx/coroutines/scheduling/Task;)Z
    .locals 2

    .line 1034
    iget-object v0, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 120
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 122
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->addLast(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final blockingTasks(J)I
    .locals 2

    const-wide v0, 0x3ffffe00000L

    and-long p0, p1, v0

    const/16 p2, 0x15

    shr-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method

.method private final createNewWorker()I
    .locals 9

    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 1059
    monitor-enter v0

    .line 480
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->isTerminated()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_1
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 481
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long v6, v2, v4

    long-to-int v6, v6

    const-wide v7, 0x3ffffe00000L

    and-long/2addr v2, v7

    const/16 v7, 0x15

    shr-long/2addr v2, v7

    long-to-int v2, v2

    sub-int v2, v6, v2

    const/4 v3, 0x0

    .line 484
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v2

    iget v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v2, v7, :cond_1

    .line 486
    monitor-exit v0

    return v3

    :cond_1
    :try_start_2
    iget v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v6, v7, :cond_2

    .line 487
    monitor-exit v0

    return v3

    .line 489
    :cond_2
    :try_start_3
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 1062
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v6

    and-long/2addr v6, v4

    long-to-int v3, v6

    add-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_4

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 490
    invoke-virtual {v6, v3}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 496
    new-instance v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    invoke-direct {v6, p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 497
    invoke-virtual {v7, v3, v6}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->setSynchronized(ILjava/lang/Object;)V

    .line 1063
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    and-long/2addr v4, v7

    long-to-int p0, v4

    if-ne v3, p0, :cond_3

    add-int/lit8 v2, v2, 0x1

    .line 1059
    monitor-exit v0

    .line 500
    invoke-virtual {v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->start()V

    return v2

    :cond_3
    :try_start_4
    const-string p0, "Failed requirement."

    .line 498
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string p0, "Failed requirement."

    .line 490
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p0

    .line 1059
    monitor-exit v0

    throw p0
.end method

.method private final createdWorkers(J)I
    .locals 2

    const-wide/32 v0, 0x1fffff

    and-long p0, p1, v0

    long-to-int p0, p0

    return p0
.end method

.method private final currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .locals 3

    .line 522
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 1066
    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->access$getThis$0$p(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v1

    .line 522
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method private final decrementBlockingTasks()V
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide/32 v1, -0x200000

    .line 294
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    return-void
.end method

.method private final decrementCreatedWorkers()I
    .locals 4

    .line 289
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method public static synthetic dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 392
    sget-object p2, Lkotlinx/coroutines/scheduling/TasksKt;->NonBlockingContext:Lkotlinx/coroutines/scheduling/TaskContext;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    return-void
.end method

.method private final getAvailableCpuPermits()I
    .locals 4

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 281
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v0, v2

    const/16 p0, 0x2a

    shr-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private final getCreatedWorkers()I
    .locals 4

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    .line 280
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final incrementBlockingTasks()J
    .locals 3

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, 0x200000

    .line 291
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final incrementCreatedWorkers()I
    .locals 4

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 288
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method

.method private final loop$atomicfu(Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I
    .locals 0

    .line 237
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 243
    :cond_1
    check-cast p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 244
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    move-result p1

    if-eqz p1, :cond_2

    return p1

    .line 247
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method private final parkedWorkersStackPop()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .locals 10

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 207
    invoke-virtual {v2, v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v7, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const-wide/32 v1, 0x200000

    add-long/2addr v1, v3

    const-wide/32 v5, -0x200000

    and-long/2addr v1, v5

    .line 209
    invoke-direct {p0, v7}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v5

    if-ltz v5, :cond_0

    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v8, v5

    or-long/2addr v8, v1

    move-object v1, v6

    move-object v2, p0

    move-wide v5, v8

    .line 216
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    .line 223
    invoke-virtual {v7, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    return-object v7
.end method

.method private final releaseCpuPermit()J
    .locals 3

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    const-wide v1, 0x40000000000L

    .line 304
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final signalBlockingWork(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    return-void

    .line 432
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 434
    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 435
    :cond_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    return-void
.end method

.method private final submitToLocalQueue(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;
    .locals 1

    if-nez p1, :cond_0

    return-object p2

    .line 513
    :cond_0
    iget-object p0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p0, v0, :cond_1

    return-object p2

    .line 1065
    :cond_1
    iget-object p0, p2, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result p0

    if-nez p0, :cond_2

    .line 515
    iget-object p0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p0, v0, :cond_2

    return-object p2

    :cond_2
    const/4 p0, 0x1

    .line 518
    iput-boolean p0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->mayHaveLocalTasks:Z

    .line 519
    iget-object p0, p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {p0, p2, p3}, Lkotlinx/coroutines/scheduling/WorkQueue;->add(Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p0

    return-object p0
.end method

.method private final tryAcquireCpuPermit()Z
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, v3

    const/16 v5, 0x2a

    shr-long/2addr v1, v5

    long-to-int v1, v1

    if-nez v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-wide v1, 0x40000000000L

    sub-long v5, v3, v1

    .line 301
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0
.end method

.method private final tryCreateWorker(J)Z
    .locals 3

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    const-wide v1, 0x3ffffe00000L

    and-long/2addr p1, v1

    const/16 v1, 0x15

    shr-long/2addr p1, v1

    long-to-int p1, p1

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    .line 447
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p2

    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-ge p2, v0, :cond_1

    .line 453
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-le v1, v0, :cond_0

    .line 456
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createNewWorker()I

    :cond_0
    if-lez p2, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method static synthetic tryCreateWorker$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;JILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 444
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker(J)Z

    move-result p0

    return p0
.end method

.method private final tryUnpark()Z
    .locals 4

    .line 464
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackPop()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 465
    :cond_1
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getWorkerCtl$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    check-cast v0, Ljava/lang/Thread;

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final availableCpuPermits(J)I
    .locals 2

    const-wide v0, 0x7ffffc0000000000L

    and-long p0, p1, v0

    const/16 p2, 0x2a

    shr-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method

.method public close()V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 338
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->shutdown(J)V

    return-void
.end method

.method public final createTask(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;
    .locals 2

    .line 420
    sget-object p0, Lkotlinx/coroutines/scheduling/TasksKt;->schedulerTimeSource:Lkotlinx/coroutines/scheduling/SchedulerTimeSource;

    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/SchedulerTimeSource;->nanoTime()J

    move-result-wide v0

    .line 421
    instance-of p0, p1, Lkotlinx/coroutines/scheduling/Task;

    if-eqz p0, :cond_0

    .line 422
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/Task;->submissionTime:J

    .line 423
    iput-object p2, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    return-object p1

    .line 426
    :cond_0
    new-instance p0, Lkotlinx/coroutines/scheduling/TaskImpl;

    invoke-direct {p0, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/TaskImpl;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContext;)V

    check-cast p0, Lkotlinx/coroutines/scheduling/Task;

    return-object p0
.end method

.method public final dispatch(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    .locals 5

    .line 393
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/AbstractTimeSource;->trackTask()V

    .line 394
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->createTask(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    .line 1051
    iget-object p2, p1, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {p2}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-eqz p2, :cond_2

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v3, 0x200000

    .line 1052
    invoke-virtual {v2, p0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    move-result-wide v2

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x0

    .line 400
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v4

    .line 401
    invoke-direct {p0, v4, p1, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->submitToLocalQueue(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;Lkotlinx/coroutines/scheduling/Task;Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 403
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->addToGlobalQueue(Lkotlinx/coroutines/scheduling/Task;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 405
    :cond_3
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " was terminated"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    if-eqz p3, :cond_5

    if-eqz v4, :cond_5

    move v0, v1

    :cond_5
    if-eqz p2, :cond_6

    .line 412
    invoke-direct {p0, v2, v3, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalBlockingWork(JZ)V

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    return-void

    .line 415
    :cond_7
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->signalCpuWork()V

    :goto_3
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 336
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->dispatch$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V

    return-void
.end method

.method public final isTerminated()Z
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 308
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final parkedWorkersStackPush(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)Z
    .locals 9

    .line 178
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getNextParkedWorker()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->NOT_IN_STACK:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/32 v5, 0x200000

    add-long/2addr v5, v3

    const-wide/32 v7, -0x200000

    and-long/2addr v5, v7

    .line 186
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->getIndexInArray()I

    move-result v2

    .line 187
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_3
    :goto_0
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 188
    invoke-virtual {v7, v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setNextParkedWorker(Ljava/lang/Object;)V

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v2

    or-long/2addr v5, v7

    move-object v2, p0

    .line 194
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0
.end method

.method public final parkedWorkersStackTopUpdate(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .locals 9

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3

    const-wide/32 v1, 0x1fffff

    and-long/2addr v1, v3

    long-to-int v1, v1

    const-wide/32 v5, 0x200000

    add-long/2addr v5, v3

    const-wide/32 v7, -0x200000

    and-long/2addr v5, v7

    if-ne v1, p2, :cond_2

    if-nez p3, :cond_1

    .line 155
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStackNextIndex(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, p3

    :cond_2
    :goto_0
    if-ltz v1, :cond_0

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v1

    or-long/2addr v5, v7

    move-object v1, v2

    move-object v2, p0

    .line 163
    invoke-virtual/range {v1 .. v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final runSafely(Lkotlinx/coroutines/scheduling/Task;)V
    .locals 1

    .line 584
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/Task;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object p0

    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/AbstractTimeSource;->unTrackTask()V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 586
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    .line 587
    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    return-void

    :catchall_1
    move-exception p0

    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->getTimeSource()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lkotlinx/coroutines/AbstractTimeSource;->unTrackTask()V

    :cond_1
    throw p0
.end method

.method public final shutdown(J)V
    .locals 7

    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->_isTerminated$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 343
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->currentWorker()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 1044
    monitor-enter v1

    .line 347
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->access$getControlState$FU$p()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 1045
    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v5, 0x1fffff

    and-long/2addr v3, v5

    long-to-int v3, v3

    .line 1044
    monitor-exit v1

    if-gt v2, v3, :cond_5

    move v1, v2

    :goto_0
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 350
    invoke-virtual {v4, v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eq v4, v0, :cond_4

    .line 352
    :goto_1
    invoke-virtual {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    move-object v5, v4

    check-cast v5, Ljava/lang/Thread;

    invoke-static {v5}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 354
    invoke-virtual {v4, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->join(J)V

    goto :goto_1

    .line 356
    :cond_1
    iget-object v5, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 357
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v5, v6, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 358
    :cond_3
    :goto_2
    iget-object v4, v4, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v4, v5}, Lkotlinx/coroutines/scheduling/WorkQueue;->offloadAllWorkTo(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    :cond_4
    if-eq v1, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 362
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->close()V

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 363
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->close()V

    :goto_3
    if-eqz v0, :cond_6

    .line 366
    invoke-virtual {v0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->findTask(Z)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-nez p1, :cond_a

    :cond_6
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 367
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    if-nez p1, :cond_a

    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 368
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->removeFirstOrNull()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    if-nez p1, :cond_a

    if-eqz v0, :cond_7

    .line 373
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->tryReleaseCpu(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 375
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 1046
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide p1

    const-wide v0, 0x7ffffc0000000000L

    and-long/2addr p1, v0

    const/16 v0, 0x2a

    shr-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    if-ne p1, p2, :cond_8

    goto :goto_4

    .line 375
    :cond_8
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_9
    :goto_4
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->parkedWorkersStack$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v0, 0x0

    .line 376
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 377
    invoke-virtual {p1, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->set(Ljava/lang/Object;J)V

    return-void

    .line 370
    :cond_a
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->runSafely(Lkotlinx/coroutines/scheduling/Task;)V

    goto :goto_3

    :catchall_0
    move-exception p0

    .line 1044
    monitor-exit v1

    throw p0
.end method

.method public final signalCpuWork()V
    .locals 4

    .line 439
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 440
    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryCreateWorker$default(Lkotlinx/coroutines/scheduling/CoroutineScheduler;JILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 441
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->tryUnpark()Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 541
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->currentLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v3

    :goto_0
    if-ge v8, v1, :cond_7

    iget-object v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->workers:Lkotlinx/coroutines/internal/ResizableAtomicArray;

    .line 542
    invoke-virtual {v9, v8}, Lkotlinx/coroutines/internal/ResizableAtomicArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 543
    :cond_0
    iget-object v10, v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->localQueue:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/WorkQueue;->getSize$kotlinx_coroutines_core()I

    move-result v10

    .line 544
    iget-object v9, v9, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->state:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v9

    aget v9, v11, v9

    if-eq v9, v3, :cond_5

    const/4 v11, 0x2

    if-eq v9, v11, :cond_4

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3

    const/4 v11, 0x4

    if-eq v9, v11, :cond_2

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    if-lez v10, :cond_6

    .line 556
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 552
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x63

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 548
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x62

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    :cond_6
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->controlState$FU:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 561
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->schedulerName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v10, 0x40

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lkotlinx/coroutines/DebugStringsKt;->getHexAddress(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "[Pool Size {core = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ", max = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v10, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->maxPoolSize:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "}, Worker States {CPU = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", blocking = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", parked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dormant = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", terminated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}, running workers queues = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", global CPU queue size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalCpuQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 573
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/GlobalQueue;->getSize()I

    move-result v2

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", global blocking queue size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->globalBlockingQueue:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 574
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/GlobalQueue;->getSize()I

    move-result v2

    .line 562
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Control State {created workers= "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v8

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", blocking tasks = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v2, 0x3ffffe00000L

    and-long/2addr v2, v8

    const/16 v4, 0x15

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", CPUs acquired = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->corePoolSize:I

    const-wide v2, 0x7ffffc0000000000L

    and-long/2addr v2, v8

    const/16 v4, 0x2a

    shr-long/2addr v2, v4

    long-to-int v2, v2

    sub-int/2addr p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "}]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
