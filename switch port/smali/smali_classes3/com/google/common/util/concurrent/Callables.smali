.class public final Lcom/google/common/util/concurrent/Callables;
.super Ljava/lang/Object;
.source "Callables.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asAsyncCallable(Ljava/util/concurrent/Callable;Lcom/google/common/util/concurrent/ListeningExecutorService;)Lcom/google/common/util/concurrent/AsyncCallable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/common/util/concurrent/ListeningExecutorService;",
            ")",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TT;>;"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;-><init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static synthetic lambda$asAsyncCallable$1(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-interface {p0, p1}, Lcom/google/common/util/concurrent/ListeningExecutorService;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$returning$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p0
.end method

.method static synthetic lambda$threadRenaming$2(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result p0

    .line 77
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 80
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 82
    :cond_1
    throw p1
.end method

.method static synthetic lambda$threadRenaming$3(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .locals 2

    .line 99
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-interface {p0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    move-result p0

    .line 103
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 106
    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-static {v1, v0}, Lcom/google/common/util/concurrent/Callables;->trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z

    .line 108
    :cond_1
    throw p1
.end method

.method public static returning(Ljava/lang/Object;)Ljava/util/concurrent/Callable;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 96
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;-><init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method static threadRenaming(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;-><init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private static trySetName(Ljava/lang/String;Ljava/lang/Thread;)Z
    .locals 0

    .line 120
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method
