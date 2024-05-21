.class public final synthetic Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/work/impl/Processor;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$2:Landroidx/work/impl/WorkerWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/Processor;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/Processor;

    iput-object p2, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Landroidx/work/impl/WorkerWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$0:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Landroidx/work/impl/Processor$$ExternalSyntheticLambda1;->f$2:Landroidx/work/impl/WorkerWrapper;

    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/Processor;->lambda$startWork$1$androidx-work-impl-Processor(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/impl/WorkerWrapper;)V

    return-void
.end method
