.class Lcom/google/common/util/concurrent/MoreExecutors$5;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:Ljava/util/concurrent/Executor;

.field final synthetic val$future:Lcom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$future:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    .line 1034
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/google/common/util/concurrent/MoreExecutors$5;->val$future:Lcom/google/common/util/concurrent/AbstractFuture;

    .line 1036
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
