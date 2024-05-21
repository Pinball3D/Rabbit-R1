.class public final synthetic Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$2:Lcom/google/common/util/concurrent/AsyncFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p2, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;->f$2:Lcom/google/common/util/concurrent/AsyncFunction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;->f$0:Lcom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Landroidx/media3/common/util/Util$$ExternalSyntheticLambda2;->f$2:Lcom/google/common/util/concurrent/AsyncFunction;

    invoke-static {v0, v1, p0}, Landroidx/media3/common/util/Util;->lambda$transformFutureAsync$2(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)V

    return-void
.end method
