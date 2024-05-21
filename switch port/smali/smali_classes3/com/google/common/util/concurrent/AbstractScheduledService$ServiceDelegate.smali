.class final Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;
.super Lcom/google/common/util/concurrent/AbstractService;
.source "AbstractScheduledService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractScheduledService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;
    }
.end annotation


# instance fields
.field private volatile executorService:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final task:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    .line 176
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractService;-><init>()V

    .line 187
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 222
    new-instance p1, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;

    invoke-direct {p1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$Task;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->task:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractScheduledService;Lcom/google/common/util/concurrent/AbstractScheduledService$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;)Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)Ljava/lang/Runnable;
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->task:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    .line 228
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->executor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$1;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$1;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    .line 227
    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 235
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$2;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final doStop()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    .line 260
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 261
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->runningTask:Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;

    const/4 v1, 0x0

    .line 262
    invoke-interface {v0, v1}, Lcom/google/common/util/concurrent/AbstractScheduledService$Cancellable;->cancel(Z)V

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 263
    new-instance v1, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate$3;-><init>(Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractScheduledService$ServiceDelegate;->this$0:Lcom/google/common/util/concurrent/AbstractScheduledService;

    .line 291
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractScheduledService;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
