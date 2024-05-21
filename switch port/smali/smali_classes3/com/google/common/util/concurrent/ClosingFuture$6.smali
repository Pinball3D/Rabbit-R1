.class Lcom/google/common/util/concurrent/ClosingFuture$6;
.super Ljava/lang/Object;
.source "ClosingFuture.java"

# interfaces
.implements Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ClosingFuture;->withoutCloser(Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/ClosingFuture$AsyncClosingFunction<",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field final synthetic val$function:Lcom/google/common/util/concurrent/AsyncFunction;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/AsyncFunction;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$6;->val$function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ClosingFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;",
            "TV;)",
            "Lcom/google/common/util/concurrent/ClosingFuture<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$6;->val$function:Lcom/google/common/util/concurrent/AsyncFunction;

    .line 833
    invoke-interface {p0, p2}, Lcom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/ClosingFuture;->from(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ClosingFuture;

    move-result-object p0

    return-object p0
.end method
