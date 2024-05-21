.class Lcom/google/common/util/concurrent/MoreExecutors$3;
.super Lcom/google/common/util/concurrent/WrappingExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/ExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$nameSupplier:Lcom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/google/common/base/Supplier;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    .line 924
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/WrappingExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    .line 932
    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lcom/google/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method protected wrapTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$3;->val$nameSupplier:Lcom/google/common/base/Supplier;

    .line 927
    invoke-static {p1, p0}, Lcom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object p0

    return-object p0
.end method
