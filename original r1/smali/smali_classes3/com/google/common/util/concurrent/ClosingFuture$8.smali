.class Lcom/google/common/util/concurrent/ClosingFuture$8;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;->catchingAsyncMoreGeneric(Ljava/lang/Class;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/AsyncFunction<",
        "TX;TW;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture;

.field final synthetic val$fallback:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->val$fallback:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;

    .line 988
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 988
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$8;->apply(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TW;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->this$0:Lcom/google/common/util/concurrent/ClosingFuture;

    .line 991
    invoke-static {v0}, Lcom/google/common/util/concurrent/ClosingFuture;->access$200(Lcom/google/common/util/concurrent/ClosingFuture;)Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->val$fallback:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;

    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->applyAsyncClosingFunction(Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;Ljava/lang/Object;)Lcom/google/common/util/concurrent/FluentFuture;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$8;->val$fallback:Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;

    .line 996
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
