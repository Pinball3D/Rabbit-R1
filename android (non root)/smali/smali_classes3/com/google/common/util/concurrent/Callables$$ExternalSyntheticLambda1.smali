.class public final synthetic Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/base/Supplier;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/base/Supplier;

    iput-object p2, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/base/Supplier;

    iget-object p0, p0, Lcom/google/common/util/concurrent/Callables$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/google/common/util/concurrent/Callables;->lambda$threadRenaming$3(Lcom/google/common/base/Supplier;Ljava/lang/Runnable;)V

    return-void
.end method
