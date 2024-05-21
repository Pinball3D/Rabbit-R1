.class Lcom/google/common/util/concurrent/ExecutionSequencer$2;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lcom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$callable:Lcom/google/common/util/concurrent/AsyncCallable;

.field final synthetic val$taskExecutor:Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ExecutionSequencer;Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;Lcom/google/common/util/concurrent/AsyncCallable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$2;->val$taskExecutor:Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$2;->val$callable:Lcom/google/common/util/concurrent/AsyncCallable;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$2;->val$taskExecutor:Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;

    .line 180
    invoke-static {v0}, Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;->access$200(Lcom/google/common/util/concurrent/ExecutionSequencer$TaskNonReentrantExecutor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateCancelledFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$2;->val$callable:Lcom/google/common/util/concurrent/AsyncCallable;

    .line 183
    invoke-interface {p0}, Lcom/google/common/util/concurrent/AsyncCallable;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ExecutionSequencer$2;->val$callable:Lcom/google/common/util/concurrent/AsyncCallable;

    .line 188
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
