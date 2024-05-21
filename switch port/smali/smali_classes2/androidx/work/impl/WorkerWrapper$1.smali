.class Landroidx/work/impl/WorkerWrapper$1;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/WorkerWrapper;->runWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/WorkerWrapper;

.field final synthetic val$runExpedited:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$runExpedited"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    iput-object p2, p0, Landroidx/work/impl/WorkerWrapper$1;->val$runExpedited:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "Starting work for "

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    .line 294
    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1}, Landroidx/work/impl/utils/futures/SettableFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$1;->val$runExpedited:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 298
    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    .line 299
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    .line 302
    iget-object v0, v0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    iget-object v1, v1, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->startWork()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lcom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper$1;->this$0:Landroidx/work/impl/WorkerWrapper;

    .line 304
    iget-object p0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {p0, v0}, Landroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
