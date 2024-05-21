.class Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->callAsync(Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
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
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

.field final synthetic val$combiningCallable:Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner;Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;->val$combiningCallable:Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;

    .line 1359
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

    .line 1362
    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    iget-object v1, v1, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->inputs:Lcom/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;-><init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/util/concurrent/ClosingFuture$1;)V

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;->val$combiningCallable:Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner;

    invoke-static {p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner;->access$1300(Lcom/google/common/util/concurrent/ClosingFuture$Combiner;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->access$1700(Lcom/google/common/util/concurrent/ClosingFuture$Peeker;Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner$2;->val$combiningCallable:Lcom/google/common/util/concurrent/ClosingFuture$Combiner$AsyncCombiningCallable;

    .line 1367
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
