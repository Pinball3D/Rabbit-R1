.class public final synthetic Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/AggregateFuture;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AggregateFuture;Lcom/google/common/util/concurrent/ListenableFuture;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iput-object p2, p0, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iput p3, p0, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;->f$0:Lcom/google/common/util/concurrent/AggregateFuture;

    iget-object v1, p0, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    iget p0, p0, Lcom/google/common/util/concurrent/AggregateFuture$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, p0}, Lcom/google/common/util/concurrent/AggregateFuture;->lambda$init$0$com-google-common-util-concurrent-AggregateFuture(Lcom/google/common/util/concurrent/ListenableFuture;I)V

    return-void
.end method
