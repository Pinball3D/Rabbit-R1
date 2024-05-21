.class public final synthetic Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/base/Supplier;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/base/Supplier;

    iget-object p0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/Callable;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/Callables;->lambda$threadRenaming$2(Lcom/google/common/base/Supplier;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
