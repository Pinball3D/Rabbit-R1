.class public abstract Lcom/google/common/util/concurrent/AbstractExecutionThreadService;
.super Ljava/lang/Object;
.source "AbstractExecutionThreadService.java"

# interfaces
.implements Lcom/google/common/util/concurrent/Service;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final delegate:Lcom/google/common/util/concurrent/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 39
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$1;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 190
    invoke-interface {p0, p1, p2}, Lcom/google/common/util/concurrent/Service;->addListener(Lcom/google/common/util/concurrent/Service$Listener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final awaitRunning()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 218
    invoke-interface {p0}, Lcom/google/common/util/concurrent/Service;->awaitRunning()V

    return-void
.end method

.method public final awaitRunning(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 224
    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Service;->awaitRunning(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final awaitTerminated()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 230
    invoke-interface {p0}, Lcom/google/common/util/concurrent/Service;->awaitTerminated()V

    return-void
.end method

.method public final awaitTerminated(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 236
    invoke-interface {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/Service;->awaitTerminated(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected executor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 164
    new-instance v0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService$2;-><init>(Lcom/google/common/util/concurrent/AbstractExecutionThreadService;)V

    return-object v0
.end method

.method public final failureCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 196
    invoke-interface {p0}, Lcom/google/common/util/concurrent/Service;->failureCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method public final isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 179
    invoke-interface {p0}, Lcom/google/common/util/concurrent/Service;->isRunning()Z

    move-result p0

    return p0
.end method

.method protected abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected serviceName()Ljava/lang/String;
    .locals 0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected shutDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final startAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 203
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->startAsync()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method protected startUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public final state()Lcom/google/common/util/concurrent/Service$State;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 184
    invoke-interface {p0}, Lcom/google/common/util/concurrent/Service;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p0

    return-object p0
.end method

.method public final stopAsync()Lcom/google/common/util/concurrent/Service;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->delegate:Lcom/google/common/util/concurrent/Service;

    .line 211
    invoke-interface {v0}, Lcom/google/common/util/concurrent/Service;->stopAsync()Lcom/google/common/util/concurrent/Service;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AbstractExecutionThreadService;->state()Lcom/google/common/util/concurrent/Service$State;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected triggerShutdown()V
    .locals 0

    return-void
.end method
