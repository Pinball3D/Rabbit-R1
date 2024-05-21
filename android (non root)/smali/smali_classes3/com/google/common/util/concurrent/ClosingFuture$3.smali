.class Lcom/google/common/util/concurrent/ClosingFuture$3;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncCallable<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture;

.field final synthetic val$callable:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->val$callable:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
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

    .line 622
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;-><init>(Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->val$callable:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;

    .line 624
    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->access$300(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;->call(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    .line 625
    invoke-static {v2}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture;->access$1000(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V

    .line 626
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture;->access$000(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    .line 628
    invoke-static {p0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object p0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-static {p0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object p0

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    .line 629
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$3;->val$callable:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingCallable;

    .line 634
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
