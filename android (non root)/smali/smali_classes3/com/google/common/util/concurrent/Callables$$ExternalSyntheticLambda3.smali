.class public final synthetic Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/util/concurrent/AsyncCallable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListeningExecutorService;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;->f$0:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;->f$0:Lcom/google/common/util/concurrent/ListeningExecutorService;

    iget-object p0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/Callables;->lambda$asAsyncCallable$1(Lcom/google/common/util/concurrent/ListeningExecutorService;Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
