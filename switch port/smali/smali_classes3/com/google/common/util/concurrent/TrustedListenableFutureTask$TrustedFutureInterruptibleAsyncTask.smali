.class final Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;
.super Lcom/google/common/util/concurrent/InterruptibleTask;
.source "TrustedListenableFutureTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/TrustedListenableFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustedFutureInterruptibleAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/util/concurrent/InterruptibleTask<",
        "Lcom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final callable:Lcom/google/common/util/concurrent/AsyncCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/TrustedListenableFutureTask;Lcom/google/common/util/concurrent/AsyncCallable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    .line 155
    invoke-direct {p0}, Lcom/google/common/util/concurrent/InterruptibleTask;-><init>()V

    .line 156
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    return-void
.end method


# virtual methods
.method afterRanInterruptiblyFailure(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method afterRanInterruptiblySuccess(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    .line 175
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    return-void
.end method

.method bridge synthetic afterRanInterruptiblySuccess(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->afterRanInterruptiblySuccess(Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method final isDone()Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->this$0:Lcom/google/common/util/concurrent/TrustedListenableFutureTask;

    .line 161
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask;->isDone()Z

    move-result p0

    return p0
.end method

.method runInterruptibly()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    .line 167
    invoke-interface {v0}, Lcom/google/common/util/concurrent/AsyncCallable;->call()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    const-string v1, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    iget-object p0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    .line 166
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    return-object p0
.end method

.method bridge synthetic runInterruptibly()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->runInterruptibly()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method toPendingString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/TrustedListenableFutureTask$TrustedFutureInterruptibleAsyncTask;->callable:Lcom/google/common/util/concurrent/AsyncCallable;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
