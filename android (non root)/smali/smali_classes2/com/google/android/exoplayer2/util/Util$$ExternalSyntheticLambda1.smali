.class public final synthetic Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$0:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/Util$$ExternalSyntheticLambda1;->f$1:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Util;->lambda$transformFutureAsync$1(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
