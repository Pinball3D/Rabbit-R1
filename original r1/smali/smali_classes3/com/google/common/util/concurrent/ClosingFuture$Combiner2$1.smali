.class Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;->call(Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ClosingFuture$Combiner$CombiningCallable<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;

.field final synthetic val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;

    .line 1479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Lcom/google/common/util/concurrent/ClosingFuture$Peeker;)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;",
            "Lcom/google/common/util/concurrent/ClosingFuture$Peeker;",
            ")TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;

    iget-object v1, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;

    .line 1483
    invoke-static {v1}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;->access$1800(Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;->this$0:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;

    invoke-static {p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;->access$1900(Lcom/google/common/util/concurrent/ClosingFuture$Combiner2;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/common/util/concurrent/ClosingFuture$Peeker;->getDone(Lcom/google/common/util/concurrent/ClosingFuture;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, v1, p0}, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;->apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$1;->val$function:Lcom/google/common/util/concurrent/ClosingFuture$Combiner2$ClosingFunction2;

    .line 1488
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
